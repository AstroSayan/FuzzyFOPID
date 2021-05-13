function G=oustaloup(alpha,N,wl,wh)
k=1:N; wu=sqrt(wh/wl);
wkz=wl*wu.^((2*k-1-alpha)/N);
wkp=wl*wu.^((2*k-1+alpha)/N);
G=zpk(-wkz,-wkp,wh^alpha,"c"); G=zpk2tf(G);
endfunction
