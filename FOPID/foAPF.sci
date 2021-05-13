function H=foAPF(alpha,wc,f,N,w)
s=poly(0,'s'); s=syslin('c',s/((0*s)+1));
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\fod.sci');
alphaTemp=fix(alpha);
alpha=alpha-alphaTemp;
num=((s^alphaTemp)*fod(alpha,f,N,w))-(wc^alpha);
den=((s^alphaTemp)*fod(alpha,f,N,w))+(wc^alpha);
H=num/den;
endfunction
