function [H,wp,wrp,wh,Hwh]=foLPF(alpha,wc,f,N,w)
alphaTemp=fix(alpha);
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\fod.sci');
s=poly(0,'s'); s=syslin('c',s/((0*s)+1));
alp=alpha-alphaTemp;
num=wc^alpha;
den=((s^alphaTemp)*fod(alp,f,N,w))+(wc^alpha);
H=num/den;
wp=wc*(-cos(alpha*%pi/2))^(1/alpha);
wrp=wc/(-cos(alpha*%pi/2))^(1/alpha);
wh=wc*(sqrt(1+(cos(alpha*%pi/2)^2))-cos(alpha*%pi/2))^(1/alpha);
Hwh=-atan((sin((alpha*%pi)/2)))/(((2*cos(alpha*%pi/2)))+(sqrt(1+(cos(alpha*%pi/2)^2))));
endfunction
