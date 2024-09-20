clear
clc
close all

tic
 
num_elements = 1000;
A = rand(num_elements);
B = A;

index = A < 0.5;

B(index) = -A(index);
toc
