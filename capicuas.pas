program Capicuas2;
const
	N=50000; 
function reverso(numero:longint):longint;
	begin
	reverso:=0;
	repeat
		reverso:=(reverso*10)+(numero mod 10);
		numero:=(numero div 10);
	until (numero=0);
	end;

var
	i:longint;
	fichero:file of longint;
begin
	writeln('');
	writeln('Este programa escribe los numeros capicuas entre el 1 y el 50.000');
	writeln('');
	assign(fichero,'./50kcapicuas.longint');
	rewrite(fichero);
	for i:=0 to N do
		if i=reverso(i) then write(fichero,i);		
	close(fichero)
end.
