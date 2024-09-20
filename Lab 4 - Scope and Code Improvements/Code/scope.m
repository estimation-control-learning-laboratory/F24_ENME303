clear
clc
close all

% Play around with "keyboard" to see what is ging on in this script.
% Where does b exist? Does the value of a change? Are the 2 a variables the
% same or different?

a = 7;

out = multiplyThree(4);


function output = multiplyThree(input)
    a = 3;
    b = 5;
    output = a*input;
    keyboard
end