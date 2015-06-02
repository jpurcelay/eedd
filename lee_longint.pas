program lee_longint;
var
	f:file of longint;
	i:longint;
	name:string;
begin
	writeln('Inserta el nombre del fichero a leer');
	readln(name);
	assign(f,name);
	reset(f);
	while not eof(f) do
		begin	
		read(f,i);
		writeln(i);
		end
	end.
