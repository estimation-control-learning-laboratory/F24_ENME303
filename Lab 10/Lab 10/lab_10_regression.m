%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Linear Reg%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
clc;
clear all;

m_true = 2; % Slope
c_true = 1; % Intercept

% Generate 100 data points with noise
n_points = 100;
x = linspace(0, 10, n_points)';
noise = randn(n_points, 1) * 0.5; 
y_noisy = m_true * x + c_true + noise;


figure;
scatter(x, y_noisy, 'b', 'filled');
hold on;
xlabel('x');
ylabel('y');
title('Noisy Data and Best-Fit Line');
grid on;


A = [x, ones(n_points, 1)]; 
b = y_noisy;                


% x_ls = pinv(A)*b;
x_ls = inv(A'*A)*A'*b;


m_estimated = x_ls(1);
c_estimated = x_ls(2);


y_fit = m_estimated * x + c_estimated;
plot(x, y_fit, 'r', 'LineWidth', 2);
legend('Noisy Data', 'Best-Fit Line');


disp(['Estimated slope (m): ', num2str(m_estimated)]);
disp(['Estimated intercept (c): ', num2str(c_estimated)]);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%NoN-Linear Reg%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
clc;
clear all;

n_points = 100;       
x = linspace(0, 2*pi, n_points)'; 
y = sin(x); 
sigma_y = 0.001;

% Degree of the polynomial
n = 20; 

% Formulate Ax = b for the polynomial model
% A will contain powers of x up to x^n
A = zeros(n_points, n+1);
for i = 0:n
    A(:, i+1) = x.^i;
end
b = y + sigma_y*randn(n_points,1); % Vector b with true sin(x) values

% Solve for x using the least squares solution
% coefficients = pinv(A)*b; % Equivalent to inv(A'*A)*A'*b
coefficients = inv(A'*A)*A'*b;

% Generate polynomial fit from the coefficients
y_fit = A * coefficients;


figure;
plot(x, y, 'b-', 'LineWidth', 2); 
hold on;
plot(x, y_fit, 'r--', 'LineWidth', 2); 
xlabel('x');
ylabel('y');
title(['Nonlinear Regression: Polynomial Fit of Degree ', num2str(n)]);
legend('True', 'Polynomial Fit');
grid on;


disp('Estimated polynomial coefficients:');
disp(coefficients);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Auto-regressive%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
clc;
clear all;


% Parameters
n_points = 100;                  
x = linspace(0, 2*pi, n_points)'; 
y_true = sin(x);                  
noise = 0.2 * randn(n_points, 1); 
y_noisy = y_true + noise;         

% Order of the AR model 
p = 20; 


A = zeros(n_points - p, p);
b = y_noisy(p+1:end); 

for i = 1:p
    A(:, i) = y_noisy(p+1-i:end-i); 
end

% Solve for AR coefficients using the least squares solution
coefficients = pinv(A)*b;


y_pred = zeros(n_points, 1);
y_pred(1:p) = y_noisy(1:p); 

for t = p+1:n_points
    y_pred(t) = sum(coefficients' .* y_pred(t-1:-1:t-p)');
end

% Plot the true function, noisy data, and AR model predictions
figure;
plot(x, y_true, 'b-', 'LineWidth', 2); 
hold on;
plot(x, y_noisy, 'k.', 'MarkerSize', 8); 
plot(x, y_pred, 'r--', 'LineWidth', 2); 
xlabel('x');
ylabel('y');
title(['Auto-Regressive Model of Order ', num2str(p)]);
legend('True', 'Noisy Data', 'AR Model Prediction');
grid on;

disp('Estimated AR coefficients:');
disp(coefficients);