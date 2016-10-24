%% Haar Inverse 
% the reconstruction of a vector from its Haar coefficients
function vector = haar_inv(haar_coeff)

vector = []; 
[~, m] = size(haar_coeff); 

%number of rounds of differencing 
n = m/2;

a = 1; 

for h = 1:n-1 
    a = 1; % Index for average
    c = []; 
    d = [];
    [~, m] = size(haar_coeff);
    
    %STILL NEED TO FIGURE OUT INDICES
    
    index = [2 4 8]; 
    for i = index; 
        haar_new = haar_coeff(1:i); 
        [~, n] = size(haar_new);
        
        for j = 1:n-1
        %add
        c(a) = (haar_new(j) + haar_new(j+1));
        
        %substract
        d(a) = (haar_new(j) - haar_new(j+1));
        a = a + 1; 
        end
        
    end 
    
    %This part still not right
    if h == n-1;
    vector = [c d vector];   
    else 
    vector = [c d vector]; 
    end 
    
    haar_coeff = [c]; 
end 
end 
