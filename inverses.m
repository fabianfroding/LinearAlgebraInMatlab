% matrix inverse and pseudoinverse

% a full-rank matrix is invertible
A = [1 2 3;
    0 4 6;
    4 4 1];

Ainv = inv(A);

figure(5), clf
subplot(231), imagesc(A)        , axis square, title('A')
subplot(232), imagesc(Ainv),    , axis square, title('A^(-1)')
subplot(233), imagesc(A * Ainv) , axis square, title('AA^(-1)')

% a reduced-rank matrix isnt...
A = [1 2 3;
    0 4 6;
    1 6 9];

Ainv = pinv(A);

% ... but it has a psuedoinverse
% Every matrix has a pseudoinv even if it doesnt actually have a full inverse
% 
Apinv = pinv(A);

subplot(234), imagesc(A)        , axis square, title('A')
subplot(235), imagesc(Apinv),    , axis square, title('A^*')
subplot(236), imagesc(A * Apinv) , axis square, title('AA^*')


