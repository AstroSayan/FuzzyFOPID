function C=modFPID(Kc,Ti,mu,f,N,w)
s=poly(0,'s'); s=syslin('c',s/((0*s)+1));
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\fod.sci');
muTemp=fix(mu);mu=mu-muTemp;
Ctemp=(s^muTemp)*fod(mu,f,N,w);
C=Kc*(((1+(Ti*Ctemp))^2)/Ctemp);
endfunction
