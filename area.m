function res = area(Theta)
    r = 12.13e-3;
    a = r * sin((pi / 2) - Theta);
    res = pi * r * a;
    res = abs(res);
end
