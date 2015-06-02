program intersec;
var
	file_a, file_b, out:file of longint;
	a,b:longint;
begin
	assign(file_a,'./capicuas.int');
	assign(file_b,'./primos.int');
	assign(out,'./primycap.int');
	reset(file_a);
	reset(file_b);
	rewrite(out);
	read(file_a,a);
	read(file_b,b);
	while not eof(file_a) do
		begin
			while b<a do
			begin
				read(file_b,b);
				if a=b then write(out,a);
			end;
		read(file_a,a);
		end;
	close(file_a);
	close(file_b);
	close(out);
end.
