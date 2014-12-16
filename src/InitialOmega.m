function res = InitialOmega(Impulse, distance)
    r = 12.13e-3; % total radius of coin
    g = 9.8;
    m = 0.00567;
    Inertia = 1/4 * m *r^2;
    res = Impulse * distance/Inertia; % where d is distance from center of mass of coin
end
