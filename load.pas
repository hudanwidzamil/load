program load;

type
	userdata = record
		nama	:string;
		alamat	:string;
		username:string;
		password:string;
		role	:string;
		end;

var
	f:text;
	cc:char;
	tab:array[1..100]of string;
	i,neff:integer;
	udata:array[1..100]of userdata;
	j,k,l,m,n:integer;
begin
	assign(f,'try.csv');
	reset(f);
	i:=1;
	neff:=0;
	while not eof(f) do
	begin	
		read(f,cc);
		if (cc<>',') then
		begin
		tab[i]:=tab[i]+cc;
		end else
		begin
			i:=i+1;
			neff:=neff+1;
		end;
	end;
	
	for i:=1 to neff+1 do
	begin
		writeln(tab[i]);
	end;
	j:=1;
	k:=1;
	l:=1;
	m:=1;
	n:=1;
	for i:=1 to neff+1 do
	begin	
		if ((i+5) mod 5 )=1 then
		begin
			udata[j].nama:=tab[i];
			j:=j+1;
		end else if ((i+5) mod 5 )=2 then
		begin
			udata[k].alamat:=tab[i];
			k:=k+1;
		end else if ((i+5) mod 5 )=3 then			
		begin
			udata[l].username:=tab[i];
			l:=l+1;
		end else if ((i+5) mod 5 )=4 then
		begin
			udata[m].password:=tab[i];
			m:=m+1;
		end else
		begin
			udata[n].role:=tab[i];
			n:=n+1;
		end;
	end;
	
	for i:=1 to j-1 do
	begin
		writeln(udata[i].username);
	end;
		
	close(f);

end.
