function C=fpi(Kp,Ki,fop,f,N,w)
s=poly(0,'s'); s=syslin('c',s/((0*s)+1));
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\fpid.sci');
C=fpid(Kp,Ki,0,[fop 0],f,N,w);
endfunction
