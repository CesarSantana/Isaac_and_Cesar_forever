function res = impulse_distance_plot()
    r = 12.13e-3
    J = linspace (0, 0.25, 200);
    D = linspace (0, r, 200);
    
    options = odeset('Event', @event, 'RelTol', 1e-12);

    count = 1;
    for ji = 1:length(J)
        count
        for di = 1:length(D)
            vy = InitialVelocity(J(ji));
            omega = InitialOmega(J(ji), D(di));
            [T, M] = ode45(@cointoss, [0, 10], [0, 0, 0, vy, 0, omega], options);
            theta = M(end,5);
            flip = floor(theta/180);
            R(ji, di) = flip;
        end
        count = count + 1;
    end

    clf;
    pcolor (J,D,R)
    xlabel ('impulse (N*s)')
    ylabel ('distance (m)')
    title ('Impulse v. Distance')
    colorbar;

    csvwrite('punchline_results_acc.csv', R);
    csvwrite('punchline_impulses_acc.csv', J);
    csvwrite('punchline_distances_acc.csv', D);
    
    function [value, isterminal, direction] = event(t, Y)
        value = Y(2);
        isterminal = 1;
        direction = -1;
    end

end
    
