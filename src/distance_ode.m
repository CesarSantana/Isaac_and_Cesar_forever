function distance_ode
    r = 12.13e-3
    j = 0.25 / 2;
    D = linspace(0, 0.00411, 4000);
    
    options = odeset('Event', @event, 'RelTol', 1e-10);

    for di = 1:length(D)
        di
        vy = InitialVelocity(j);
        omega = InitialOmega(j, D(di));
        [T, M] = ode45(@cointoss, [0, 10], [0, 0, 0, vy, 0, omega], options);
        theta = M(end,5);
        flips = floor(theta/180);
        R(di) = flips;
    end

    csvwrite('small_distance_ode_res.csv', R);
    csvwrite('small_distance_ode_d.csv', D);
    
    function [value, isterminal, direction] = event(t, Y)
        value = Y(2);
        isterminal = 1;
        direction = -1;
    end

end
