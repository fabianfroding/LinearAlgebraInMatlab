% more about rank

% singular 2x2 matrix
smallmat = [1 3; 2 6];

rank(smallmat)
det(smallmat)

% reduced-rank matrix
M1 = randn(30, 4);
M2 = randn(4, 32);

bigMat = M1 * M2;
size(bigMat)
rank(bigMat)

figure(4), clf
subplot(131), imagesc(M1), axis square, axis off
title([num2str(size(M1, 1)) 'x' num2str(size(M1, 2)) ', rank = ' num2str(rank(M1))])

subplot(132), imagesc(M2), axis square, axis off
title([num2str(size(M2, 1)) 'x' num2str(size(M2, 2)) ', rank = ' num2str(rank(M2))])

subplot(133), imagesc(bigMat), axis square, axis off
title([num2str(size(bigMat, 1)) 'x' num2str(size(bigMat, 2)) ', rank = ' num2str(rank(bigMat))])
