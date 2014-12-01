function res = air_resistance(V, Theta)
    rho = 1.2;
   Cd = 0.5;
   v = norm(V);
   Vhat = V / v;
   A = area(Theta);

   res = 0.5 * rho * Cd * A * v ^ 2 * -Vhat;
end
