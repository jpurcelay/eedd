//Creese un programa que solicite al usuario los elementos de 2 matrices 3 × 3 de reales
//y saque por pantalla la matriz resultado de sumar ambas y su traspuesta. Para ello
//deben emplearse los algoritmos disenados en los problemas del tema 1. El algoritmo
//intercambio debe implementarse como un procedimiento local del algoritmo que se
//emplea para trasponer las matrices.

program sumMat;

const
   N=3;

type
    miMat=array[1..N,1..N] of real;

procedure intercambio(var a, b: integer);
	var
		aux:integer;
	begin	
		aux:=a;
		a:=b;
		b:=aux;
	end;

procedure leeMatriz(var mat:miMat);
	var
		i,j:integer;
	begin
        writeln();
	for i:=1 to N do
		for j:=1 to N do
			begin
			write('Introduzca el elemento [',i,'][',j,'] de la matriz: ');
			readln(mat[i,j]);
			end;
        end;
var
	matriz1, matriz2:miMat;
    i,j:integer;
begin
leeMatriz(matriz1);
leeMatriz(matriz2);

for i:=1 to N do
    begin
    writeln();
    for j:=1 to N do
        begin
            write('[',matriz1[i,j]+matriz2[i,j]:4:2,']')
        end
    end;

for i:=1 to N do
    begin
    writeln();
    for j:=1 to N do
        begin
            write('[',matriz1[j,i]+matriz2[j,i]:4:2,']')
        end
    end;
end.





