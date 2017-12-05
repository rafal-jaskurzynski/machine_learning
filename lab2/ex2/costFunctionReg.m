function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta



theta_J =theta(2:size(theta,1),:); % removing first row (theta 0 )


factor = lambda * sum( theta_J .^ 2 ) / ( 2 * m );

theta_grad = theta;
theta_grad( 1 ) = 0;

z = sum( theta' .* X, 2 );
h = sigmoid( z );
J = ( sum( -1 * y .* log( h ) - ( 1 - y ) .* log ( 1 - h ) ) / m ) + factor;

grad = ( sum( ( h - y ) .* X ) / m ) + ( lambda * theta_grad' / m );




% =============================================================

end
