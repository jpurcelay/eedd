//Cr ́eese un programa que solicite al usuario dos valores enteros positivos y calcule utilizando el algoritmo de Euclides su m ́aximo com ́un divisor y su m ́ınimo com ́un m ́ultiplo. El programa debe sacar ambos valores por pantalla.
program Euclides;
var
	a,b,aux:integer;
function euclides(a,b:integer):integer;
var
	aux:integer;
begin
	while (a mod b)<>0 do
		begin
			aux:=b;
			b:=(a mod b);
			a:=aux;
		end;	
	euclides:=b;
end;

begin
	writeln();
	write('Introduzca el primer entero: ');
	readln(a);
	write('Introduzca el segundo entero: ');
	readln(b);
	writeln(euclides(a,b));
end.	
