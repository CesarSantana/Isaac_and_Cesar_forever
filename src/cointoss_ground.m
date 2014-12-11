function res = cointoss_ground(vy)
    clf;

    options = odeset('Event', @event);
    [T, M] = ode45(@cointoss, [0, 50], [0, 0, 0, vy, 0, 670], options);

    X = M(:, 1);
    Y = M(:, 2);
    Vx = M(:, 3);
    Vy = M(:, 4);
    Theta = M(:, 5);
    Omega = M(:, 6);

    theta = Theta(end);
    theta = mod(theta, 360);
    if theta < 180
        res = 0;
    else
        res = 1;
    end

    function [value, isterminal, direction] = event(t, Y)
        value = Y(2);        
        isterminal = 1;
        direction = 0;
    end
end
