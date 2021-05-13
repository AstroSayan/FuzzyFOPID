function G=firPSE(alpha,N,T)
if alpha>0 then numCoeff=cumprod([1,1-((alpha+1)./[1:N])]);
numCoeff=numCoeff(:,$:-1:1);
num=poly(numCoeff,'z','c');
z=poly(0,'z');
den=(T^alpha)*z^N;
G=syslin('d',num,den);
end
if alpha<0 then denCoeff=cumprod([1,1-((-alpha+1)./[1:N])]);
denCoeff=denCoeff(:,$:-1:1);
den=poly(denCoeff,'z','c');
z=poly(0,'z');
num=(T^-alpha)*z^N;
G=syslin('d',num,den);
end
endfunction
