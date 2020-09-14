function [min_x, min_y] = dichotomous_search(func, x_L, x_U, eps)
    if nargin == 3
        eps = 0.01;
    end

    while x_L < x_U
        mid = (x_L + x_U) / 2;
        mid_y_L = func(mid - eps, 1);
        mid_y_U = func(mid + eps, 1);
        if mid_y_L < mid_y_U
            x_U = mid;
        elseif mid_y_L > mid_y_U
            x_L = mid;
        else
            break;
        end
    end
    min_x = mid;
    min_y = func(mid);
end

