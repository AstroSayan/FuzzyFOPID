function step(G,t)
Gres=csim('step',t,G);
f=gcf();
plot(t,Gres);
xlabel("Time (sec)");
ylabel("Amplitude");
title("Step Response");
endfunction
