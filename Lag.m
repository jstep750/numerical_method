%lagrange
function y = Lag(P, x, deg)
    s = size(P);
    %n = s(1);
    y = 0;
    n = deg+1;
    for k = 1:n
        %L_k
        up = 1;
        down = 1;
        for i = 1:n
            if i ~= k   
                up = up*(x - P(i,1));
                down = down*(P(k,1) - P(i,1));
            end
        end        
        Lk = P(k,2) * (up/down);
        y = y + Lk;
    end
end
