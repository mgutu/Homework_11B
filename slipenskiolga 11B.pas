Program TemaPentruAcasa;
var a, b, x, y, D:real;
function distanta (a1, b1, x1, y1:real):real;
begin
distanta:=sqrt(sqr(a1-x1)+sqr(b1-y1));
end;
begin
readln (a,b,x,y);
D:=distanta (a,b,x,y);
writeln ('distanta dintre coordonate=', D);
end.