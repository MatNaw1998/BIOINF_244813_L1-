function [filtred] = filtr(m,okno, prog)
filtred = zeros(length(m(:,1)),length(m(1,:)));
for i=1:(length(m(:,1))-okno+1)
for j=1:(length(m(1,:))-okno+1)
zgodne = 0;
for k=0:(okno-1)
if m(i+k,j+k)==1
zgodne = zgodne +1;
end
if zgodne >= (okno-prog)
for l=0:(okno-1)
if m(i+l,j+l)==1
filtred(i+l, j+l)=1;
end
end
end
end
end
end
spy(sparse(filtred));
end
