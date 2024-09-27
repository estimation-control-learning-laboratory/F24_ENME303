clear; clc; close all;

disp("For loop from 1 to 10 with a step of 0.1")
for i = 1:0.1:10 
    disp(i);
end

disp("For loop from 1 to 10 populating an array")
A = zeros(1,10);
for i = 1:10
    A(i) = i^2;
end
disp(A)

disp("Example of using an array as the index value")
for i = A
    disp(sqrt(i))
end

disp("Example of using break statement: Stop when we find 29")
myArray = [7,3,14,38,29,98,4,27];
for i = myArray
    disp(i)
    % Check for the number we want
    if i == 29
        % If the number is there, exit the loop
        break
    end
end
disp("Notice that we did not evaluate any numbers after 29")