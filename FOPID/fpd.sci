function C=fpd(Kp,Kd,fop,f,N,w)
s=poly(0,'s'); s=syslin('c',s/((0*s)+1));
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\fpid.sci');
C=fpid(Kp,0,Kd,[0 fop],f,N,w);
endfunction
