function G=curFit2(alpha,N,wl,wh)
w=logspace(log10(wl),log10(wh),10000);
s = poly(0,'s');
s=syslin('c',s/((0*s)+1));
F=repfreq(s,w);
f=F.^alpha;
[G,Err]=frep2tf(w,f,N);
endfunction
