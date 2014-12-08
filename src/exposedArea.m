function res = exposedArea(r, theta)
    a = r * sin((pi / 2) - theta);
    res = pi * r * a;
    res = abs(res);
end
