Program TemaPentruAcasa;
Type Ora=0..23;
         Grade=-40..40;
         Temperatura=array [Ora] of Grade;
Var t: Temperatura;
       i:integer;
       tmax, tmin:Grade;
function temperaturaMedie (t:Temperatura):real;
       var suma:real;
              i:integer;
begin
suma:=0;
for i:=0 to 23 do suma:=suma+t[i];
temperaturaMedie:=suma/24;
end;
procedure temperaturaMinimaMaxima (t:Temperatura; var tmin, tmax:Grade);
var i:integer;
begin
tmin :=t[0];
tmax:=t[0];
for i:=1 to 23 do
begin
if t[i]<tmin then tmin := t[i];
if t[i]>tmax then tmax :=t[i];
end;
end;
procedure oraTemperaturaMaxima (t:Temperatura; tmax:Grade);
var i:integer;
begin
writeln ('Orele la care sa inregistrat temperatura maxima');
for i:=0 to 23 do
begin
if t[i]=tmax then writeln (i);
end;
end;
procedure oraTemperaturaMinima (t:Temperatura; tmin:Grade);
var i:integer;
begin writeln ('Ora la care sa inregistrat temperatura minima');
for i:=0 to 23 do
begin
if t[i] =tmin then writeln (i);
end;
end;
begin
for i:=0 to 23 do
writeln ('Dati temperatura pentru ora: ',i);
readln (t[i]);
end;
//programul nu este finalizat
