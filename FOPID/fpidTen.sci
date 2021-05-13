function C=fpidTen(Kp,Ki,Kd,f,n,N,w)
s=poly(0,'s'); s=syslin('c',s/((0*s)+1));
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\fod.sci');
nTemp=fix(n);n=n-nTemp;
C=(1/(s^nTemp*fod(n,f,N,w)))*(Kp+(Ki/s)+(Kd*s));
endfunction
