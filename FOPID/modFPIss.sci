function C=modFPIss(Kp,Td,alpha,eta,f,N,w)
s=poly(0,'s'); s=syslin('c',s/((0*s)+1));
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\fod.sci');
alphaTemp=fix(alpha);alpha=alpha-alphaTemp;
Ctemp=(s^alphaTemp)*fod(alpha,f,N,w);
C=Kp*((1+(Td*s))/Ctemp)*((s+eta)/s);
endfunction
