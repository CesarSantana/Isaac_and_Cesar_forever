function [T, M] = cointoss_impulse_ode
    Vy = InitialVelocity
    options = odeset('Event', @event, 'RelTol', 1e-12);
    [T, M] = ode45(@cointoss, [0, 25], [0, 0, 0.2, Vy, 0, 670], options);

    function [value, isterminal, direction] = event(t, Y)
        value = Y(2);
        isterminal = 1;
        direction = 0;
    end
end
