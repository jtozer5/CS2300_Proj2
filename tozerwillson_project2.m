%{
Josh Tozer & Nathan Willson
CS 2300 002
Project 2
Fri Oct 11, 2019 at 11:59 pm
This assignment will use a file that contains target box lower left coordinate, 
target box size, and information describing a line in parametric form. Using this 
information, we will plot the line using character output and will create a target
box from the implicit form of the line. We will do this graphically.
%}

%Outputs name and assignment number.
disp('Josh Tozer & Nathan Willson')
disp('Project 2')

%Gets the numbers from the text file and saves the target box lower left coordinate, 
%target box size, and information describing a line in parametric form.
data = dlmread('line4.txt');
target_box = data(1:2);
box_size = data(3);
point = data(4:5);
vec = data(6:7);

%Uses the parametric equation of a line to display the line to the user.
hold on;
t = linspace(-box_size/2, box_size/2);
v = point(1) + t * vec(1);
w = point(2) + t * vec(2);
plot(v,w, 'Color', 'b', 'LineStyle', ':');

%Creates a rectangle that displays the target box.
rectangle('Position',[target_box(1), target_box(2), box_size, box_size], 'EdgeColor','r', 'LineStyle','--');
