%% solving a system of equations

% 3x + 2y - z = 1
% 2x - 2y + 4z = -2
% -x + y / 2 - z = 0

% separate into coefficients and contants matrices
coefs = [3 2 -1;
    2 -2 4;
    -1 1/2 -1];

const = [1 -2 0]';

solution = inv(coefs) * const
solution = coefs \ const % slash operator. will work even if there is no explicit inverse
% Same thing as multiplying by the inverse

