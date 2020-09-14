%% q function for multi point, default order
value = q_func(rand(10, 2));
if size(value) ~= [10, 1]
    error('q_func calculate for multi point error');
else
    disp('q_func calculate for multi point success');
end

%% q function for single point, default order
value = q_func([2, 3]);
if size(value) ~= [1, 1]
    error('q_func calculate for single point error');
else
    disp('q_func calculate for single point success');
end

%% q function for single point, with grad
[value, grad] = q_func([2, 3], 1);
if size(value) ~= [1, 1]
    error('q_func calculate for single point error');
else
    disp('q_func calculate for single point success');
end

if size(grad) ~= [1, 2]
    error('q_func calculate gard for single point error');
else
    disp('q_func calculate gard for single point success');
end

%% q function for multi point, with grad
[value, grad] = q_func(rand(10, 2), 1);
if size(value) ~= [10, 1]
    error('q_func calculate for multi point error');
else
    disp('q_func calculate for multi point success');
end

if size(grad) ~= [10, 2]
    error('q_func calculate gard for multi point error');
else
    disp('q_func calculate gard for multi point success');
end
