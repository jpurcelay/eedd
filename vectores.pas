//Joel Perez Urcelay
program L2E4;
const
    N=10;
type
    miArray=ARRAY[1..N] of integer;

function productoEscalar(v:miArray):real;
var
    j:integer;
begin
    for j:=1 to N do
        productoEscalar:=productoEscalar+(v[j]*v[j]);
    productoEscalar:=sqrt(productoEscalar);
end;

procedure ordenaBurbuja(var v:miArray);
var
    i,j,chupi:integer;
begin
    for i:= N downto 1 do
        for j:= 1 to i-1 do
            if v[j] > v[j+1] then
                begin
                    chupi := v[j];
                    v[j] := v[j+1];
                    v[j+1]:=chupi;
                end;
end;

procedure rellenar_array(var vector:miArray; size:integer);
var
    j:integer;
begin
    for j:=1 to size do
        begin
        write('Introduzca el valor del #',j,' elemento del vector: ');
        readln(vector[j])
        end;
end;

procedure mostrar_array(vector:miArray; size:integer);
var
    j:integer;
begin
    writeln();
    for j:=1 to size do
        write(vector[j],' ');
end;

//

var
    v:miArray;
    producto:real;
begin
    writeln('Joel P. Urcelay');
    writeln('Lab 2 Exercise 1');
    rellenar_array(v,N);
    mostrar_array(v,N);
    producto:=productoEscalar(v);
    writeln(producto);
    ordenaBurbuja(v);
    mostrar_array(v,N);
    writeln(producto-(productoEscalar(v)));
end.
