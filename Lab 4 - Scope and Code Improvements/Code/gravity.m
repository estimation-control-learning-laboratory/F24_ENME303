clear;
clc;
close all;

% Here I have a script to calculate the height an object fell from based 
% on how long it took to fall. I want to be able to calculate the value 
% in meters or feet

% Define a variable called gravity, we can change it based on which units 
% we want to use

global GRAVITY;
% GRAVITY = 9.8; % m/s^2
GRAVITY = 32.2; % ft/s^2


time = 8.3; % Seconds
height = calcHeight(time);

fprintf("The object took %.1f seconds to fall %.2f feet",time,height);


function h = calcHeight(t)
% Function: calcHeight
% Output: Height
% Input: Time in seconds
    global GRAVITY;
    keyboard
    h = 1/2*GRAVITY*t.^2;
end