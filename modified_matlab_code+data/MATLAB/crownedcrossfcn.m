function scores = crownedcrossfcn(x)
    
    n = size(x, 2);
    assert(n == 2, 'The Crowned Cross function is only defined on a 2D space.')
    X = x(:, 1);
    Y = x(:, 2);

    expcomponent = abs(100 - (sqrt(X .^2 + Y .^2) / pi));
    
    scores = 0.0001 * ((abs(sin(X) .* sin(Y) .* exp(expcomponent)) + 1) .^ 0.1) - 0.0001; % Modified here.
end