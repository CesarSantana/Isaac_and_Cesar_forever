function res = airResistance(V, area, Cd)
    rho = 1.2;
    v = norm(V);

    % check for divide by zero
    if v == 0
       Vhat = [0; 0];
    else
       Vhat = V / v;
    end

    res = 0.5 * rho * Cd * area * v ^ 2 * -Vhat;
end
