function sinfo=stepinfo(G,t,yf)
y=csim('step',t,G); exec('isfinite.sci');
if y==[] then
    disp('Empty Data')
else
TF=isfinite(y);
if TF==1 then ns=length(y);
[sinfo.Peak,ipeak]=max(abs(y));
sinfo.PeakTime=t(ipeak);
if yf==0 then
sinfo.Overshoot=%inf;
if and(y>=0) then
sinfo.Undershoot=0;
else
sinfo.Undershoot=%inf;
end
else
yrel=y/yf; sinfo.Overshoot=100*max(0,max(yrel-1));
sinfo.Undershoot=-100*min(0,min(yrel));
end
tolBand=0.02; err=abs(y-yf);
tol=tolBand*max(err); nn=length(err);
nn1=nn;
for i=1:nn
err1(nn1)=err(i); nn1=nn1-1;
end
err1=err1';
isettle=find(err1>tol,1); nny=length(y);
nny1=nny;
for i=1:nny
y1(nny1)=y(i); nny1=nny1-1;
end
y1=y1';
t1=t(length(t)):-(t(2)-t(1)):t(1);
if isettle==[] then
sinfo.SettlingTime=0;
elseif isettle==ns
sinfo.SettlingTime=%nan;
elseif y1(isettle)~=y1(isettle+1)
y1Settle=yf+sign(y1(isettle)-yf)*tol;
sinfo.SettlingTime = t1(isettle) +...
(t1(isettle)-t1(isettle+1))/...
(y1(isettle)-y1(isettle+1))...
*(y1Settle-y1(isettle));
else
sinfo.SettlingTime=t1(isettle+1);
end
yLow=y(1)+0.1*(yf-y(1));
iLow=1+find((y(1:ns-1)-yLow).*(y(2:ns)-yLow)<=0,1);
if iLow==[] then
tLow=%nan;
elseif iLow>1 && y(iLow)~=y(iLow-1)
tLow=t(iLow)+(t(iLow)-t(iLow-1))/...
(y(iLow)-y(iLow-1))*(yLow-y(iLow));
else
tLow=t(iLow);
end
yHigh=y(1) + 0.9*(yf-y(1));
iHigh=1+find((y(1:ns-1)-yHigh).*(y(2:ns)-yHigh)<=0,1);
if iHigh==[] then
tHigh=%nan;
sinfo.SettlingMin=%nan; sinfo.SettlingMax=%nan;
else
if iHigh>1 && y(iHigh)~=y(iHigh-1)
tHigh=t(iHigh)+(t(iHigh)-t(iHigh-1))/...
(y(iHigh)-y(iHigh-1))*(yHigh-y(iHigh));
else
tHigh=t(iHigh);
end
yRisen=y(iHigh:length(y));
sinfo.SettlingMin=min(yRisen);
sinfo.SettlingMax=max(yRisen);
end
sinfo.RiseTime=tHigh-tLow;
sinfo.SettlingMin=min(yRisen);
sinfo.SettlingMax=max(yRisen);
else
sinfo.RiseTime=%nan;
sinfo.SettlingTime=%nan;
sinfo.SettlingMin=%nan;
sinfo.SettlingMax=%nan;
sinfo.Overshoot=%nan; sinfo.Undershoot=%nan;
sinfo.Peak=%inf; sinfo.PeakTime=%inf;
end
end
endfunction
