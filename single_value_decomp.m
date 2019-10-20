% Singular value decomposition

ein = imread('einstein.jpg');

figure(7), clf
imshow(ein)

einflat = mean(ein, 3);

% SVD of image
[U, S, V] = svd(einflat);
figure(8), clf

for i = 1:16
    
    % Low-rank approximation
    lowapp = U(:, 1:i) * S(1:i, 1:i) * V(:, 1:i)';
    
    subplot(4, 4, i)
    imagesc(lowapp), axis off, axis image
    title(['Rank-' num2str(rank(lowapp)) ' approx.'])
end
colormap gray


