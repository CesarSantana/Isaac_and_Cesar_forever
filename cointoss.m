function res = cointoss(t,W)
    %%% constants %%%
    m = 0.00567;
    rho = 1.2041;
    A = 4.6224e-04;
    g = 9.8;
    ihat = [1; 0];
    jhat = [0; 1];
    %%%%%%%%%%%%%%%%%

    P = W(1:2);
    V = W(3:4); 
    % Theta = W(5:6);

    % dtdt = omega %change in angle
    dpdt = V;
    dvdt = acceleration(V);

    % res = [dpdt; dvdt; dtdt];
    res = [dpdt; dvdt];

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

       res = 0.5 * rho * Cd * A * v ^ 2 * -Vhat;
    end
end
