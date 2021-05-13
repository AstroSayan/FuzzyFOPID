function C=fpiLuo(Kp,Ki,lam)
s=poly(0,'s'); s=syslin('c',s/((0*s)+1));
C1=(lam*Ki)/(Kp*s);
C2=((lam*(lam-1))/2)*(Ki/(Kp*s))^2;
C3=((lam*(lam-1)*(lam-2))/6)*(Ki/(Kp*s))^3;
C=(Kp^lam)*(1+C1+C2+C3);
endfunction
