%% Problem 3
u = [0 2 4 6 6 4 2 1 -1 -2 -4 -6 -6 -4 -2 0];
%% 3.1 Check if haar_step works
unew = haar_step(u, 5);

%% 3.2 Now create w
w = [u u u u u u u u]; 
unew1 = haar_step(w, 1);
unew2 = haar_step(w, 2);
unew3 = haar_step(w, 3);
unew4 = haar_step(w, 4);
unew5 = haar_step(w, 5);
unew6 = haar_step(w, 6);
unew7 = haar_step(w, 7);

% We see that our vector unew doesn't change after k = 4. We observed this
% by using the setdiff() function. 

setdiff(unew5, unew4); % we get 0
setdiff(unew6, unew4); % also get 0

%% 3.3 
load handel; 
handel = y(1:65536); 
sound(handel)

% Run haar_step 
hand_1 = haar_step(handel, 1);  
hand_2 = haar_step(handel, 2); 
hand_3 = haar_step(handel, 3);  

% When k = 1, sound(handel) sounds very similar to the original handel.
% When k = 2, 3 the result sounds like a sped up and quieter version of the
% original. The frequency is increasing with each k, so handel is sped up.
% With the averging and differencing the points in handel are decreasing,
% so the "amplitude" of the sound is decreasing. As a result, hand_3 is the
% quietest. 
% pitch is getting quieter