unit primalidad;

interface
function esprimo(primo:integer):boolean;

implementation
function esprimo(primo:integer):boolean;
var
	k:integer;
begin
	if primo=2 then esprimo:=true
	else if primo=3 then esprimo:=true
	else if primo>3 then
		begin
		if (primo mod 2) <> 0 then
			begin
				k:=3;
				while (primo > k*k) and ((primo mod k) <> 0) do
					k:=k+2;
				esprimo:=(primo mod k)<>0;
			end;
		end;
end;
end.
