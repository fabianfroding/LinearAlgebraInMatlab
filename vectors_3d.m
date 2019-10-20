% visualizing the plane spanned by two 3D vectors

%two vectors to define a plane
v1 = [4 -5 4]'; % transposing to make them column-vectors
v2 = [2 4 1]';

% and their cross-product
cp = cross(v1, v2);
cp = cp / norm(cp);

% draw the vectors
figure(4), clf
plot3([0 v1(1)], [0 v1(2)], [0 v1(3)], 'k', 'linew', 3)
hold on
plot3([0 v2(1)], [0 v2(2)], [0 v2(3)], 'k', 'linew', 3)
plot3([0 cp(1)], [0 cp(2)], [0 cp(3)], 'r', 'linew', 3)

% draw the plane spanned by the vectors
% @ anonymous/inline function
% setting up three linear equations for all three linear dimensions
h = ezmesh(@(x, y) v1(1) * x + v2(1) * y,...
    @(x, y) v1(2) * x + v2(2) * y,...
    @(x, y) v1(3) * x + v2(3) * y,...
    [-1 1 -1 1 -1 1]);

set(h, 'facecolor', 'g', 'cdata', ones(50), 'linestyle', 'none')
xlabel('C_1'), ylabel('C_2'), zlabel('C_3')
axis square
title('')
grid on, rotate3d on

% is this vector in the column space of the matrix

M = [4 5 6;
    0 1 4;
    4 1 0;
    3 3 9];

v1 = [-4 3 7 2]';
v2 = [-1 1 5 6]'; % M(:, 1) * 2 - M(:, 3)

rank(M)
rank([M v1])
rank([M v2])

rref([M v2])
M\v2
