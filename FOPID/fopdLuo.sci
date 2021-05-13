function C=fopdLuo(Kp,Kd,mu)
s=poly(0,'s'); s=syslin('c',s/((0*s)+1));
C1=(mu*Kd*s)/(Kp);
C2=((mu*(mu-1))/2)*((Kd*s)/Kp)^2;
C3=((mu*(mu-1)*(mu-2))/6)*((Kd*s)/Kp)^3;
C=(Kp^mu)*(1+C1+C2+C3);
endfunction
