clc;

%*************************************************************************
%the code aims to input the features and the labels of the neutral network
%and starts the training of artificial neural network
%*************************************************************************


%Input  the parameters, including features and labels
features = xlsread('dataset.xlsx','E2:Q602');
labels = xlsread('dataset.xlsx','T2:V602');


%Relabel the AM, IM and SS
AM = labels(:,1);
IM = labels(:,2);
SS = labels(:,3);


nnstart;
