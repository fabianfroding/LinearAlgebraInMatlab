% eigenvalues and eigenvectors
% important because they highlight the features inside a matrix
% that are invariant to rotation

A = [1 4; 5 -2];

eig(A)

[eigvecs, eigvals] = eig(A);

notevec = [2 1]; % not e vec = not eigen vector.
notevec = notevec / norm(notevec);

v = A * eigvecs(:, 1);
w = A * notevec';

figure(6), clf, hold on

% plot the vectors and vectors times the matrix
plot([0 eigvecs(1, 1)], [0 eigvecs(2, 1)], 'k', 'linew', 2)
plot([0 v(1)], [0 v(2)], 'k--')

plot([0 notevec(1)], [0 notevec(2)], 'r', 'linew', 2)
plot([0 w(1)], [0 w(2)], 'r--')

axlim = max([norm(v) norm(w)]);
set(gca, 'xlim', [-1 1] * axlim, 'ylim', [-1 1] * axlim)
grid on
axis square
