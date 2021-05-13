function G=fotf(n,np,d,dp,f,N,w)
s=poly(0,'s'); s=syslin('c',s/((0*s)+1));
[nr,nc]=size(n);[npr,npc]=size(np);
[dr,dc]=size(d);[dpr,dpc]=size(dp);
Gnum=0;Gden=0;
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\fod.sci');
if nc==npc & dc==dpc then
for i=1:nc
npTemp(i)=fix(np(i));
np(i)=np(i)-npTemp(i);
Gnum=Gnum+n(i)*s^npTemp(i)*fod(np(i),f,N,w);
end
for i=1:dc
dpTemp(i)=fix(dp(i));
dp(i)=dp(i)-dpTemp(i);
Gden=Gden+d(i)*s^dpTemp(i)*fod(dp(i),f,N,w);
end
G=syslin('c',Gnum/Gden);
else
disp('Check the orders')
disp('Order of n is not equal to np or')
disp('the order of d is not equal to dp')
end
endfunction
