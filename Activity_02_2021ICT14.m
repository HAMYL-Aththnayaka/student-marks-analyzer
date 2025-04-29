% Student Marks and Grade Analysis Script
% ---------------------------------------
% This script collects marks for 5 students, assigns grades,
% and provides options to display a bar chart or average mark.

clc;
clear;

% Initialize marks array
marks = zeros(1, 5);

% Input and grade assignment
for i = 1:5
    while true
        mark = input(sprintf('Enter the mark for student %d (0–100): ', i));
        if isnumeric(mark) && mark >= 0 && mark <= 100
            marks(i) = mark;
            break;
        else
            disp('Invalid input. Please enter a number between 0 and 100.');
        end
    end

    % Grade determination
    if marks(i) >= 90
        grade = 'A';
    elseif marks(i) >= 80
        grade = 'B';
    elseif marks(i) >= 70
        grade = 'C';
    elseif marks(i) >= 60
        grade = 'D';
    else
        grade = 'F';
    end

    fprintf('Grade: %s\n\n', grade);
end

% Menu loop
while true
    fprintf('\nMenu Options:\n');
    fprintf('1. Show all marks as a bar chart\n');
    fprintf('2. Show average marks\n');
    fprintf('3. Exit\n');

    choice = input('Enter your choice (1, 2, or 3): ');

    switch choice
        case 1
            % Display bar chart
            bar(marks, 'FaceColor', [0.2 0.6 0.5]);
            title('Student Marks');
            xlabel('Student Number');
            ylabel('Marks');
            grid on;
            disp('Bar chart displayed.');
            
        case 2
            % Calculate and display average
            avg_marks = mean(marks);
            fprintf('The average mark is: %.2f\n', avg_marks);
            
        case 3
            % Exit the program
            disp('Thank you! Program terminated.');
            break;

        otherwise
            disp('Invalid option. Please enter 1, 2, or 3.');
    end
end
