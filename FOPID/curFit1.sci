function G=curFit1(alpha,N,wl,wh)
w=logspace(log10(wl),log10(wh));
s=poly(0,'s'); s=syslin('c',s/((0*s)+1));
F=repfreq(s,w);
f=F.^alpha; G=frfit(w,f,N);
endfunction
