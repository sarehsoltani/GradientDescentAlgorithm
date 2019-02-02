close all
clear
clc

load regression_dataset.csv

X = regression_dataset(: , 1:2 ) ;
X = [ones( size(X,1) , 1 ) , X] ;
Y = regression_dataset(: , 3) ;
W = 1*rand( size(X , 2) , 1) ;

Theta = [3.9933; 7.2963; 3.0936];
IterMax = 100 ;
alpha = .1 ;

W = Theta ;
W2 = W;

for i = 1: IterMax
    Err(i) = ErrorFunc(W,X,Y) ;
    Grad = GradFunc(W,X,Y) ;
    W = W - alpha * Grad;
%      pause(0.5)
%      plot(Err,'-*')
end
ii=1:IterMax;
plot(ii,Err,'-*')


