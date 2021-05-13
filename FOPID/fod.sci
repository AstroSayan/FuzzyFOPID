function G=fod(alpha,f,N,w)
wl=w(1); wh=w(2);
if f=='o' then
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\oustaloup.sci');
G=oustaloup(alpha,N,wl,wh);
elseif f=='r' then
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\refOustaloup.sci');
G=refOustaloup(alpha,N,wl,wh);
elseif f=='m' then
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\matsuda.sci');
G=matsuda(alpha,N,wl,wh);
elseif f=='cf1' then
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\curFit1.sci');
G=curFit1(alpha,N,wl,wh);
elseif f=='cf2' then
exec('C:\Users\SAYAN\Documents\FuzzyFOPID\curFit2.sci');
G=curFit2(alpha,N,wl,wh);
else
disp('Check the name of the approximation function')
end
endfunction
