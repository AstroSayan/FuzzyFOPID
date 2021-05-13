function S=stability(n,np,d,dp,f,N,w)
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\fotf.sci');
G=fotf(n,np,d,dp,f,N,w);
G=syslin('c',G);
z=roots(G.num);
p=roots(G.den);
pr=real(p);
nu=0; ns=0; up=0; sp=0; temp=0;
for i=1:length(p)
if pr(i)>0 then
nu = nu+1; up(nu)=p(i);
elseif pr(i)<0
ns = ns+1; sp(ns)=p(i);
temp=1;
else
disp('The system has no poles')
end
end
disp(p,'Pole(s) of the system:')
if length(sp)>0 & temp==1 then
disp([sp],'Stable pole(s):')
end
if length(up)>0 & up~=0 then
disp([up],'Unstable pole(s):')
end
if nu>0 then
disp('Unstable System'); S=0;
else
disp('Stable System'); S=1;
end
endfunction
