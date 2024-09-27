%% Driver file for arrayMax function
% Use this to test your arrayMax function that you write
clear; clc; close all;

myArray1 = [1,5,10,7,3,11,8];
myArray2 = randi(100,1,10); % 1x10 Random array of integers less than 100
disp(myArray2)

max1 = arrayMax(myArray1);
max2 = arrayMax(myArray2);

fprintf("The maximum value of array 1 is %i \n",max1)
fprintf("The maximum value of array 2 is %i \n",max2)

%% Useful information and Syntax
% For loops:
% for i = initVal:endVal
%     Statements to be repeated
% end
%
% length(array) returns the length of an array as an integer
% 
% Hint: Store the current maximum to compare each iteration