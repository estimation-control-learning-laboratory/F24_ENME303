clc
clear all
close all

% rand('state',1)

A = rand(4,2);
A(:,3) = A*rand(2,1)

rank(A);
orth(A)
null(A)

[U,Sigma,V] = svd(A)
% SVD Computation
[U1, D1] = eig(A*A')
Sigma1 = real(sqrt(D1))

[V1, D2] = eig(A'*A)
Sigma2 = real(sqrt(D2))

%% Rank calculation via condition number
clc
A = [1e3 0; 0 1e-13]
rank(A)

%% Psuedo inverse is computed using SVD
b = rand(4,1);

pinv(A)

SigmaPlus = Sigma';
for ii = 1:min(size(A))
    if Sigma(ii,ii)>1e-16
        SigmaPlus(ii,ii) = 1/Sigma(ii,ii);
    end
end
V*SigmaPlus*U'