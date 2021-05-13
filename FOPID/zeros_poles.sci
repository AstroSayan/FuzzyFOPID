function [z,p]=zeros_poles(G)
G=syslin('c',G);
z=roots(G.num);
p=roots(G.den);
endfunction
