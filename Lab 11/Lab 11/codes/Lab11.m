clc;
clear all;



A = [1, 2, 4; 
     0, 0, 5; 
     0, 3, 6];


[m, n] = size(A);
Q = zeros(m, n);
R = zeros(n, n);


Q(:,1) = A(:,1)/norm(A(:,1));
q_bar_2 = A(:,2) - (Q(:,1)'*A(:,2))*Q(:,1);
Q(:,2) = q_bar_2/norm(q_bar_2);
q_bar_3 = A(:,3) - (Q(:,1)'*A(:,3))*Q(:,1) - (Q(:,2)'*A(:,3))*Q(:,2);
Q(:,3) = q_bar_3/norm(q_bar_3);

Q'*Q;
inv(Q) == Q';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%

clc;
clear all;



A = [1, 2, 4; 
     0, 0, 5; 
     0, 3, 6];


% A = [1, 2, 4, 0; 
%      0, 0, 5, -3; 
%      0, 3, 6, 10;
%      0, -1, 0.5, 6];

[m, n] = size(A);
Q = zeros(m, n);
R = zeros(n, n);


for i=1:n
    prev_projections = 0;

    for j=1:i-1
        prev_projections = prev_projections + (Q(:,j)'*A(:,i))*Q(:,j);
        
    end
         q_bar = A(:,i) - prev_projections;
         Q(:,i) = q_bar/norm(q_bar);
        

end

Q'*Q;

inv(Q) == Q';

R = Q'*A;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
clc;
clear all;



A = [1, 2, 4; 
     0, 0, 5; 
     0, 3, 6];

[Q, R] = qr(A);
Q'*Q;
inv(Q) == Q';