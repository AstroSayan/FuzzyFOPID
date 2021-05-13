function df=grunwald(f,t,alpha,h)
df(1)=0; w=1; f=f';
for j=2:length(t)
w(j)=w(j-1)*(1-((alpha+1)/(j-1)));
end
w=w';
for i=2:length(t)
df(i)=w(1:i)*[f(i:-1:1)];
end
df=df/h^alpha;
endfunction
