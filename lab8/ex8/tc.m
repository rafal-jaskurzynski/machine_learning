%Test 3a (Collaborative Filtering Cost):
%input:
params = [ 1:14 ] / 10;
Y = magic(4);
Y = Y(:,1:3);
R = [1 0 1; 1 1 1; 0 0 1; 1 1 0] > 0.5;     % R is logical
num_users = 3;
num_movies = 4;
num_features = 2;
lambda = 0;
%J = cofiCostFunc(params, Y, R, num_users, num_movies, num_features, lambda)
%output:
%J =  311.63
%---------------------------------------
%Test 4a (Collaborative Filtering Gradient):
%input:
params = [ 1:14 ] / 10;
Y = magic(4);
Y = Y(:,1:3);
R = [1 0 1; 1 1 1; 0 0 1; 1 1 0] > 0.5  ;   % R is logical
num_users = 3;
num_movies = 4;
num_features = 2;
lambda = 0;
[J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, num_features, lambda)

J_expected = 311.6

grad_expected = [ -16.1880;
 -23.5440;
-5.1590;
 -14.9720;
-21.4380;
-30.4620;
-6.5660;
 -19.5440;
 -3.4230;
 -7.0280;
 -3.4140;
 -12.2590;
 -16.0600;
 -9.7420 ]


fasfasfsdaf

%---------------------------------------
%Test 5a (Regularized Cost):
%input:
params = [ 1:14 ] / 10;
Y = magic(4);
Y = Y(:,1:3);
R = [1 0 1; 1 1 1; 0 0 1; 1 1 0] > 0.5;     % R is logical
num_users = 3;
num_movies = 4;
num_features = 2;
lambda = 6;
J = cofiCostFunc(params, Y, R, num_users, num_movies, num_features, lambda)

%output:
%J =  342.08

%---------------------------------------
%Test 6a (Gradient with regularization):
%input:
params = [ 1:14 ] / 10;
Y = magic(4);
Y = Y(:,1:3);
R = [1 0 1; 1 1 1; 0 0 1; 1 1 0] > 0.5;     % R is logical
num_users = 3;
num_movies = 4;
num_features = 2;
lambda = 6;
[J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, num_features, lambda)
%output:
print("J =  342.08");

print("grad =");
print("-15.5880");
print("-22.3440");
print(" -3.3590");
print(" -12.5720");
print(" -18.4380");
print(" -26.8620");
print(" -2.3660");
print(" -14.7440");
print(" 1.9770");
print(" -1.0280");
print(" 3.1860");
print("-5.0590");
print(" -8.2600");
print(" -1.3420");
%-----------
%Test 6b (a user with no reviews):
%input:
params = [ 1:14 ] / 10;
Y = magic(4);
Y = Y(:,1:3);
R = [1 0 1; 1 1 1; 0 0 0; 1 1 0] > 0.5;     % R is logical
num_users = 3;
num_movies = 4;
num_features = 2;
lambda = 6;
[J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, num_features, lambda)
%output:
print("J =  331.08");

print("grad =");
print("-15.5880");
print("-22.3440");
print(" 1.8000");
print(" -12.5720");
print("-18.4380");
print(" -26.8620");
print(" 4.2000");
print("-14.7440");
print(" 1.9770");
print(" -1.0280");
print(" 4.5930");
print(" -5.0590");
print(" -8.2600");
print(" 1.9410");

