function scores = crossintrayfcn(x)
    
    n = size(x, 2);
    assert(n == 2, 'The Cross-in-tray function is only defined on a 2D space.')
    X = x(:, 1);
    Y = x(:, 2);

    expcomponent = abs(100 - (sqrt(X .^2 + Y .^2) / pi));
    
    scores = -0.0001 * ((abs(sin(X) .* sin(Y) .* exp(expcomponent)) + 1) .^ 0.1) + 2.062611870822739; % Modified here.
end