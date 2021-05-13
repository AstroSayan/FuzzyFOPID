function C=pid(Kp,Ki,Kd)
s=poly(0,'s');
s=syslin('c',s/((0*s)+1));
C=Kp+(Ki/s)+(Kd*s);
endfunction
