function G=matsuda(alpha,N,wl,wh)
w=logspace(log10(wl),log10(wh),N+1);
k=20*log10(abs(w.^alpha)); K=abs(10.^(k/20));
temp1=[];
for j=0:length(w)-1
temp(0+1,j+1)=K(j+1);
for i=1:j
    temp(i+1,j+1)=(w(j+1)-w(i))/(temp(i,j+1)-temp(i,i));
end
temp1=[temp1 temp(j+1,j+1)];
end
Gm=temp1(length(temp1));
for i=length(temp1)-2:-1:0
Gm=temp1(i+1)+(zpk([1 w(i+1)],1,1,"c")/Gm);
end
G=zpk2tf(Gm);
endfunction
