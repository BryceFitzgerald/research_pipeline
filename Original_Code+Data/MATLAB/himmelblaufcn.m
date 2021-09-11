function scores = himmelblaufcn(x)
    n = size(x, 2);
    assert(n == 2, 'Himmelblau''s function is only defined on a 2D space.')
    X = x(:, 1);
    Y = x(:, 2);
    
    scores = ((X .^ 2 + Y - 11) .^2) + ((X + (Y .^ 2) - 7) .^ 2);
end