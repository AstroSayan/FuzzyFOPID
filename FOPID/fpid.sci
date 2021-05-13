function C=fpid(Kp,Ki,Kd,fop,f,N,w)
s=poly(0,'s'); s=syslin('c',s/((0*s)+1));
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\fod.sci');
lam=fop(1); mu=fop(2);
lambdaTemp=fix(lam);lam=lam-lambdaTemp;
muTemp=fix(mu);mu=mu-muTemp;
C=Kp+(Ki/(s^lambdaTemp*fod(lam,f,N,w)))+(Kd*s^muTemp*fod(mu,f,N,w));
endfunction
