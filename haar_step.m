function [ unew ] = haar_step( u, k )
n = length(u);
kmax = log2(n) + 1;
if k > kmax
    disp('out of range, reset k');
    k = kmax;
end

for i = 1:k 
    u = haar_step_sub(u, i, n);
end

unew = u;
end

function [mnew] = haar_step_sub(m, k, n)
if k == 1
    mnew = m;
else 
    dv = 2^(k - 2); 
    index = n / dv;
    mtemp = m(1:index);
    modd = mtemp(1:2:index);
    meven = mtemp(2:2:index);
    mnew = [(modd + meven) / 2, (modd - meven) / 2, m((index+1):end)];  
end 
end

   
