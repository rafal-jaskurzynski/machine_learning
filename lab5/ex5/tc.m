X = [[1 1 1]' magic(3)];
y = [7 6 5]';
theta = [0.1 0.2 0.3 0.4]';

lambda = 0;
[J g] = linearRegCostFunction(X, y, theta, lambda);

 
lambda = 7;
[J g] = linearRegCostFunction(X, y, theta, lambda);





X = [ones(5,1) reshape(-5:4,5,2)];
y = [-2:2]';
Xval=[X;X]/10;
yval=[y;y]/10;
[et ev] = learningCurve(X,y,Xval,yval,1)