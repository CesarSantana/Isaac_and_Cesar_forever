function impulse_ode
    r = 12.13e-3
    J = linspace (0, 0.10011, 1000);
    d = r / 2; % use a middle distance
    
    options = odeset('Event', @event, 'RelTol', 1e-6);

    for ji = 1:length(J)
        ji
        vy = InitialVelocity(J(ji));
        omega = InitialOmega(J(ji), d);
        [T, M] = ode45(@cointoss, [0, 10], [0, 0, 0, vy, 0, omega], options);
        theta = M(end,5);
        flips = floor(theta/180);
        R(ji) = flips;
    end

    csvwrite('small_impulse_ode_res.csv', R);
    csvwrite('small_impulse_ode_j.csv', J);
    
    function [value, isterminal, direction] = event(t, Y)
        value = Y(2);
        isterminal = 1;
        direction = -1;
    end

end
