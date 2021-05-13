function [Gm,Pm,Wgm,Wpm] = margins(G)
[Pm,Wpm] = p_margin(G);
[Gm,Wgm] = g_margin(G);
if Wpm ~= [] then
Wpm = Wpm*2*%pi;
end
if Wgm ~= [] then
Wgm = Wgm*2*%pi;
end
clf();
show_margins(G,'bode')
endfunction
