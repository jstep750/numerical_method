%Bilinear
function r = bilinear(x,y,P)
    if any([0,1]==x) && any([0,1]==y)
        y = 1-y;
        r = P(y+1,x+1);
        return
    elseif any([0,1]==x)
        r = (1-y)*bilinear(x,0,P) + y*bilinear(x,1,P);   
    elseif any([0,1]==y)
        r = (1-x)*bilinear(0,y,P) + x*bilinear(1,y,P);
    else
        r = (1-y)*bilinear(x,0,P) + y*bilinear(x,1,P);
    end
end