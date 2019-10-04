% Project 2

% line data
data = dlmread('line3.txt');
target_box = data(1:2);
box_size = data(3);
point = data(4:5);
vec = data(6:7);

% Draw target box
x1 = target_box(1);
x2 = target_box(1) + box_size;
y1 = target_box(2);
y2 = target_box(2) + box_size;
x = [x1, x2, x2, x1, x1];
y = [y1, y1, y2, y2, y1];
plot(x, y, 'b-');
hold on;

% Draw line