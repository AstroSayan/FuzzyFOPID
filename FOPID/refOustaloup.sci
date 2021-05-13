function G=refOustaloup(alpha,N,wl,wh)
b=10; d=9; k=-N:N;
wu=sqrt(wh/wl);
K=(d*wh/b)^alpha;
wkz=wl*wu.^((2*k-1-alpha)/N);
wkp=wl*wu.^((2*k-1+alpha)/N);
G1=zpk(-wkz',-wkp',K,"c");
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\tf.sci'); s=tf('s');
G2=syslin('c',((d*s^2)+(b*wh*s))/((d*(1-alpha)*s^2)+(b*wh*s)+(d*alpha)));
G=G1*G2;
G=zpk2tf(G);
endfunction
