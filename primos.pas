program primos;

uses primalidad;

const
	N=50000;

var
	o_file:file of longint;
	i:longint;
begin
	assign(o_file,'./primos.int');
	rewrite(o_file);
	for i:=0 to N do
		if esprimo(i) then write(o_file,i);
	close(o_file);
end.
