function G=iirPSE(alpha,N,T)
num(1)=1; den(1)=1;
for i=1:N
num(i+1)=((-1)^i)*(gamma(abs(alpha)+1)./(gamma(i+1).* ...
gamma(abs(alpha)-i+1)));
den(i+1)=gamma(abs(alpha)+1)./(gamma(i+1).* ...
gamma(abs(alpha)-i+1));
end
num=num'; den=den';
num=num(:,$:-1:1);
den=den(:,$:-1:1);
z=poly(0,'z');
num=poly(num,'z','c');
den=poly(den,'z','c');
if alpha>0 then
G=((2/T)^alpha)*syslin('d',num,den);
end
if alpha<0 then
G=((2/T)^alpha)*syslin('d',den,num);
end
endfunction
