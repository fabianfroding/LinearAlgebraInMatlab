% creating and plotting vectors in 3D

v3a = [1 3 -4];
v3b = round(randn(1, 3) * 5); % vector with random numbers

figure(2), clf

% plot vector
plot3([0 v3a(1)], [0 v3a(2)], [0 v3a(3)], 'k', 'linew', 3)
hold on
plot3([0 v3b(1)], [0 v3b(2)], [0 v3b(3)], 'r', 'linew', 3)

% set square axes
axlims = max([norm(v3a) norm(v3b)]);
set(gca, 'xlim', [-1 1] * axlims, 'ylim', [-1 1] * axlims, 'zlim', [-1 1] * axlims)
grid on
axis square

% plot 0-lines
hold on
clear h
h1 = plot3(get(gca, 'xlim'), [0 0], [0 0], 'r--');
h2 = plot3([0 0], get(gca, 'ylim'), [0 0], 'b--');
h3 = plot3([0 0], [0 0], get(gca, 'zlim'), 'y--');
set([h1 h2 h3], 'color', [1 1 1] * .3)
rotate3d on % allow rotation of the plot

% axis labels
xlabel('X'), ylabel('Y'), zlabel('Z')

% creating and visualizing matrices

% a small matrix
amat = [1 2 3; 4 5 6; 0 1 2; 4 1 9];

figure(3), clf
subplot(221)
imagesc(amat)
title('Some matrix')
set(gca, 'xtick', 1:size(amat, 2))
set(gca, 'ytick', 1:size(amat, 1))

% Identity matrix
imat = eye(10);
subplot(222)
imagesc(imat)
set(gca, 'xtick', [], 'ytick', [])
title('Identity matrix')

% random matrix
rmat = randn(250, 240);
subplot(223)
imagesc(rmat)
set(gca, 'xtick', [], 'ytick', [])
title('Random matrix')

% triangular matrix
% all elements below diagonal set to zero
% tril() for lower
tmat = triu(randn(100));
subplot(224)
imagesc(tmat)
set(gca, 'xtick', [], 'ytick', [])
title('Upper Triangular matrix')