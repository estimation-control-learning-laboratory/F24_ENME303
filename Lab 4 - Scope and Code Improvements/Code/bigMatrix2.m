clear
clc
close all

tic
 
num_elements = 10;
A = zeros(num_elements);
B = zeros(num_elements);

for i = 1:num_elements
    for j = 1:num_elements

        A(i,j) = rand;

        if A(i,j) >0.5
            B(i,j) = A(i,j);
        else
            B(i,j) = -A(i,j);
        end
    end
end
toc
