function scores = leonfcn(x)
    n = size(x, 2);
    assert(n == 2, 'Leon function is defined only on a 2D space.')
    X = x(:, 1);
    Y = x(:, 2);
    
    scores = 100 * ((Y - X.^3) .^2) + ((1 - X) .^2);
end