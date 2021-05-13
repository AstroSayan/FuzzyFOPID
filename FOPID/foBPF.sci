function [H,wp]=foBPF(alpha,bita,wc,f,N,w)
s=poly(0,'s'); s=syslin('c',s/((0*s)+1));
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\fod.sci');
alphaTemp=fix(alpha);
alp=alpha-alphaTemp;
bitaTemp=fix(bita);
bi=bita-bitaTemp;
num=(wc^alpha)*((s^bitaTemp)*fod(bi,f,N,w));
den=((s^alphaTemp)*fod(alp,f,N,w))+(wc^alpha);
H=num/den;
wptemp=sqrt(alpha^2+4*bita*(alpha-bita)*tan(alpha*%pi/2)^2);
wp=wc*((cos(alpha*%pi/2)*((2*bita-alpha)+(wptemp)))/(2*(alpha-bita)))^(1/alpha);
endfunction
