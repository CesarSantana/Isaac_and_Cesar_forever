function res = impulse_distance_plot()
    r = 12.13e-3
    J = linspace (0, 0.01, 10);
    D = linspace (0, r, 10);
    
    for ji = 1:length(J)
        for di = 1:length(D)
            vy = InitialVelocity(J(ji));
            omega = InitialOmega(J(ji), D(di));
            options = odeset('Event', @event, 'RelTol', 1e-3);
            [T, M] = ode45(@cointoss, [0, 10], [0, 0, 0, vy, 0, omega], options);
            theta = M(end,5);
            flip = theta/180;
            R(ji, di) = flip
        end
    end

    clf;
    contourf (J,D,R)
    xlabel ('impulse (N*s)')
    ylabel ('distance (m)')
    title ('Impulse v. Distance')
    colorbar;
    
    function [value, isterminal, direction] = event(t, Y)
        value = Y(2);
        isterminal = 1;
        direction = -1;
    end

end
    