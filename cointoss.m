function res = cointoss(t,W)
    %%% constants %%%
    m = 0.00567;
    g = 9.8;
    ihat = [1; 0];
    jhat = [0; 1];
    %%%%%%%%%%%%%%%%%

    P = W(1:2);
    V = W(3:4); 
    Theta = W(5:6);

    dtdt = omega %change in angle
    dpdt = V
    dvdt = acceleration

    res = [dpdt; dvdt; dtdt];

    function res = omega()
        res = [0; 0];
    end

    function res = acceleration()
        res = gravity
    end

    function res = gravity()
        res = -g * jhat;
    end

end
