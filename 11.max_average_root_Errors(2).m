% error
P = [-1 10; 0 9; 1 7; 2 5; 3 4; 4 3; 5 0; 6 -1];

s = size(P);
n = s(1);
max_error = 0;
average_error = 0;
root_error = 0;
for i = 1:n
    error = abs((8.6 - 1.6*P(i,1)) - P(i,2));
    %           F: 8.6 - 1.6*x          y
    if max_error < error
        max_error = error;
    end
    average_error = average_error + error;
    root_error = root_error + (error^2);
end
average_error = (1/n)*average_error;
root_error = sqrt((1/n)*root_error);