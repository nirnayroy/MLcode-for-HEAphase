clc;
%Pridiction

xx=xlsread('test','E2:Q9');%load the test data

x1=xx;%AM feature
x2=xx;%IM feature
x3=xx;%SS feature

%feature reduction to get the highest accuary
x1(:,7)=[];x1(:,5)=[];x1(:,4)=[];x1(:,2)=[];%reduce to 9 features for AM model
x2(:,5)=[];x2(:,2)=[];%reduce to 11 features for IM model
x3(:,4)=[];x3(:,3)=[];x3(:,1)=[];%reduce to 10 features for SS model

y1=AM9(x1);%predict AM
y2=IM11(x2);%predict IM
y3=SS10(x3);%predict SS
y=[y1 y2 y3];