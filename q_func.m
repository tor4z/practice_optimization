function [value, grad, hessian] = q_func(x, order)
    a = 1.0;
    b = 1.6;
    c = 3.5;
    d = -2.3;
    e = 1.8;
    f = 6.4;
    
    if nargin == 1
        order = 0;
    end
    
    row = size(x, 1);
    if row == 1
        x1 = x(1, 1);
        x2 = x(1, 2);
    else
        x1 = x(:, 1);
        x2 = x(:, 2);
    end

    value = a*x1.^2 + b*x2.^2 + c*x1.*x2 + d*x1 + e*x2 + f;
    if order == 0
        % do nothing
    elseif order == 1
        grad = zeros(row, 2);
        grad(:, 1) = (2*a*x1 + c*x2 + d);
        grad(:, 2) = (2*b*x2 + c*x1 + e);
    elseif order == 2
        hessian = zeros(2, 2);
        hessian(1, 1) = 2*a;
        hessian(1, 2) = c;
        hessian(2, 1) = c;
        hessian(2, 2) = 2*b;
    else
        error('Undefined order [%d].', order);
    end
end

