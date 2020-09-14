x_L = -10;
x_U = 10;

[min_x, min_y] = dichotomous_search(@test_func, x_L, x_U, 0.1);

disp(min_x);
disp(min_y);

plot(-10:10, test_func(-10:10, 1))

function value = test_func(x, order)
    a = 0.2;
    b = 2.1;
    c = 3.4;

    value = a*x.^2 + b*x + c;
end
