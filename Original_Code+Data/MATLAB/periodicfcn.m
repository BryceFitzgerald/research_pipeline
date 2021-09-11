function scores = periodicfcn(x)

%    x = x - 1; % Modified here.

    sin2x = sin(x) .^ 2;
    sumx2 = sum(x .^2, 2);
    scores = 1 + sum(sin2x, 2) -0.1 * exp(-sumx2) - 0.9; % Modified here.
    
end