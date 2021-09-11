function scores = holdertablefcn(x)
    
    n = size(x, 2);
    assert(n == 2, 'The Holder-table function is only defined on a 2D space.')
    X = x(:, 1);
    Y = x(:, 2);
    
    expcomponent = exp( abs(1 - (sqrt(X .^2 + Y .^ 2) / pi)) );
    
    scores = -abs(sin(X) .* cos(Y) .* expcomponent) + 19.208502567767603; % Modified here.
end