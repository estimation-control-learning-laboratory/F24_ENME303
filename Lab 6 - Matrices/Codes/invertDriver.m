% This is a driver for the invert(A) function defined in invert.m
clear; clc; close all;

% Create a matrix to invert
A1 = [1 2;3 4];
invA1 = invert(A1);
disp("Original matrix:")
disp(A1)
disp("The calculated inverse is:")
disp(invA1)
disp("The correct inverse is:")
disp(inv(A1))

% This second matrix should not be invertible
A2 = [2 6;1 3];
disp("Original matrix:")
disp(A2)
invA2 = invert(A2)

