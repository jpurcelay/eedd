program primos4n1;

uses primalidad;

var
	i_file, o_file:file of longint;
	i:longint;
begin
	assign(i_file,'./primos.int');
	assign(o_file,'./primos4n1.int');
	reset(i_file);
	rewrite(o_file);
	while not eof(i_file) do
		begin
		read(i_file,i);
		if ((i-1)mod 4 )=0 then write(o_file,i);
		end;
	close(o_file);
	close(i_file);
end.
