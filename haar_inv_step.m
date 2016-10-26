%% Haar Inverse Step 
% Write a function haar inv step inverting the function haar step. 
% The function haar inv step takes as input a vector v and the number of rounds k.
function [vnew] = haar_inv_step(v,k)
n = length(v);
kmax = log2(n) + 1;
if k > kmax
    disp('out of range, reset k');
    k = kmax;
end

for i = 1:k 
    v = haar_inv_step_sub(v, i);
end

vnew = v;
end

function [mnew] = haar_inv_step_sub(m, k)
if k == 1
    mnew = m;
else 
    u_old = m;
    u_new = u_old;
    for j = 0:k-1
        for i = 1:(2^j)
        u_new(2*i-1) = u_old(i) + u_old(2^j + i); 
        u_new(2*i) = u_old(i) - u_old(2^j + i);
    end
    mnew = u_new; 
    end
    
end
end
