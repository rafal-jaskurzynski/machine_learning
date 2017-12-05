function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


% cost function 

% J(θ) = 1/2m * sum( hθ(x(i)) − y(i) ) ^ 2
% hθ(x) = θT * x = θ0 + θ1*x1


h_ = theta' .* X;
h = sum( h_, 2 );
dist = h - y;
dist_pow = dist .^ 2;
J = sum( dist_pow ) / ( 2 * m );


% =========================================================================

end
