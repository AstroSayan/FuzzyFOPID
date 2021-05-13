function impulse(G,t)
Gres=csim('impulse',t,G);
plot(t,Gres);
f=gcf();
xlabel("Time (sec)");
ylabel("Amplitude");
title("Impulse Response");
endfunction
