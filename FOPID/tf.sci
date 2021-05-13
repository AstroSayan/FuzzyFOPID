function s=tf(s)
s=poly(0,'s');
s=syslin('c',s/((0*s)+1));
disp('Continuous-time transfer function');
endfunction
