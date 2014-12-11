function res = cointoss_air(t,W)
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
    dragCoeff = W(7);

    dtdt = Omega; %change in angle
    dodt = alpha(Omega);
    dpdt = V;
    dvdt = acceleration(V);

    % res = [dpdt; dvdt; dtdt];
    res = [dpdt; dvdt; dtdt; dodt; 0];

    function res = omega()
        res = [0; 0];
    end

    function res = acceleration(V)
        area = exposedArea(r, Theta);
        res = gravity + airResDC(V, area, dragCoeff) ./ m;
    end

    function res = gravity()
        res = -g * jhat;
    end

    function res = alpha(O)
      res = 0;  
    end

end
