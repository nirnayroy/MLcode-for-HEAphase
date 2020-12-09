clc;

%*************************************************************************
%the code aims to input the number-reduced features and the labels of the 
%neutral network and starts the training of artificial neural network
%*************************************************************************



%Input  the parameters, including features and labels
features = xlsread('dataset.xlsx','E2:Q602');
labels = xlsread('dataset.xlsx','T2:V602');



%Relabel the AM, IM and SS
AM = labels(:,1);
IM = labels(:,2);
SS = labels(:,3);



%Present different features, the user should select the below features for
%the network
features_13 = features; %All 13 features

%AM model feature reduction
features_AM10 = features; % Reduct to 10 features
features_AM10(:,5) = []; %delet Hmix
features_AM10(:,4) = []; %delet dTm
features_AM10(:,2) = []; %delet delta


features_AM9 = features_AM10; %Reduct to 9 features
features_AM9(:,4) = []; %delet Sid


features_AM6 = features_AM9; %Reduct to 6 features
features_AM6(:,9) = []; %delet dK
features_AM6(:,4) = []; %delet mean electronegativity X
features_AM6(:,1) = []; %delet a

features_AM5 = features_AM6; %Reduct to 5 features
features_AM5(:,3) = []; %delet dX


%IM model feature reduction
features_IM11 = features; % Reduct to 11 features
features_IM11(:,5) = []; %delet Hmix
features_IM11(:,2) = []; %delet delta

features_IM10 = features_IM11; % Reduct to 10 features
features_IM10(:,9) = []; %delet dVEC

%SS model feature reduction
features_SS10 = features; % Reduct to 10 features
features_SS10(:,4) = []; %delet dTm
features_SS10(:,3) = []; %delet Tm
features_SS10(:,1) = []; %delet a


nnstart;
