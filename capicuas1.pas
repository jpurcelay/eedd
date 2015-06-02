//Creese un programa que solicite al usuario un n ́umero menor que 100.000 y que indique si el n ́umero es capic ́ua. El programa debe utilizar la funci ́on esCapic ́ua que aparece abajo en pseudoc ́odigo. N ́otese que esta funci ́on utliza la funci ́on reverso (cuyo c ́odigo tambi ́en se indica). Esta u ́ ltima funci ́on debe programarse como un procedimiento local a capic ́ua.
program Capicua1;
function reverso(numero:longint):longint;
	begin
	reverso:=0;
	repeat
		reverso:=(reverso*10)+(numero mod 10);
		numero:=(numero div 10);
	until (numero=0);
	end;

var
	numero:longint;
begin
writeln();
repeat
	write('Introduzca un numero inferior a 100.000: ');
	readln(numero)
until (numero<100000);
	writeln(numero=reverso(numero));
end.
