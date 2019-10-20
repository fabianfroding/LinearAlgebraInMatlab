% Creating and plotting vectors in 2D

v1 = [1 3];
s = 2; % scalar

figure(1), clf

% Plot vector
% plot (( [x start & end coords], [y start & end coords], line color,
% linewidth)
plot([0 v1(1)], [0 v1(2)], 'k', 'linew', 3);
hold on % put this one later
% r-- = red dashed line, *s = stretching the line... making it longer etc
plot([0, v1(1)] * s, [0 v1(2)] * s, 'r--', 'linew', 3);

% set square axes
% norm - get norm/length of vector (how long the line is)
% max get the max of the params
% in this case: norm(v1) or norm(v1*s)
axlim = max([norm(v1) norm(v1 * s)]);
% gca = get current axis
% set(gca, property, value, property, value) (property-value pairs)
% can list more proerty and values than you want to hcange
set(gca, 'xlim', [-1 1] * axlim, 'ylim', [-1 1] * axlim)
grid on
axis square % will not stretch when draggin window etc

% plot 0-lines
hold on
clear h
% xlim = x axis limit
% plot(x coords, y coords, line)
h(1) = plot(get(gca, 'xlim'), [0 0], 'k--'); % black dashed horisontal line
h(2) = plot([0 0], get(gca, 'ylim'), 'k--'); % black dashed vertical line
% set (handle, property, [R G B] (0-1) 30%)
set(h, 'color', [1 1 1] * .3)
