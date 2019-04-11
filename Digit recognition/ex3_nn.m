%% Initialization
clear ; close all; clc
%% Setting up the parameters
input_layer_size  = 400;  % 20x20 Input Images of Digits
hidden_layer_size = 5;   % 5 hidden units
num_labels = 10;          % 10 labels, from 0 to 9   
                          
% Load Training Data
fprintf('Loading and Visualizing Data ...\n')
load('ex3data1.mat');
m = size(X, 1);

fprintf('Program paused. Press enter to continue.\n');
pause;

fprintf('\nLoading Saved Neural Network Parameters ...\n')
% Load the weights into variables Theta1 and Theta2
load('ex3weights.mat');

pred = predict(Theta1, Theta2, X);

fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);
fprintf('Program paused. Press enter to continue.\n');
pause;
%  Randomly permute examples
rp = randperm(m);

for i = 1:m
     % Display 
    fprintf('\nDisplaying Example Image\n');
    displayData(X(rp(i), :));
      pred = predict(Theta1, Theta2, X(rp(i),:));
    fprintf('\nNeural Network Prediction: %d (digit %d)\n', pred, mod(pred, 10));
    % Pause
    fprintf('Program paused. Press enter to continue.\n');
    pause;
end