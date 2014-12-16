function [T, M] = cointoss_ode_precise
    options = odeset('Event', @event, 'RelTol', 1e-12);
    [T, M] = ode45(@cointoss, [0, 5], [0, 0, .2, 15, 0, 670], options);
    
    function [value, isterminal, direction] = event(t, Y)
        value = Y(2);
        isterminal = 1;
        direction = -1;
    end
end
