function res = cointoss(t,W)
    %%% constants %%%
    m = 0.00567;
    rho = 1.2041;
    r = 12.13e-3;
    g = 9.8;
    ihat = [1; 0];
    jhat = [0; 1];
    %%%%%%%%%%%%%%%%%

    P = W(1:2);
    V = W(3:4); 
    Theta = W(5);
    Omega = W(6);

    dtdt = Omega; %change in angle
    dodt = alpha(Omega);
    dpdt = V;
    dvdt = acceleration(V);

    % res = [dpdt; dvdt; dtdt];
    res = [dpdt; dvdt; dtdt; dodt];

    function res = omega()
        res = [0; 0];
    end

    function res = acceleration(V)
        res = gravity + air_resistance(V) ./ m;
    end

    function res = gravity()
        res = -g * jhat;
    end

    function res = air_resistance(V)
       Cd = 0.5;
       v = norm(V);
       Vhat = V / v;
       A = area(Theta);

       res = 0.5 * rho * Cd * A * v ^ 2 * -Vhat;
    end

    function res = alpha(O)
      res = 0;  
    end

    function res = area(Theta)
        a = r * sin((pi / 2) - Theta);
        res = pi * r * a;
        res = abs(res);
    end
end
