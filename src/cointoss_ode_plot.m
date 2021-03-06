function res = cointoss_ode_plot()
    [T, M] = cointoss_ode;

    X = M(:, 1);
    Y = M(:, 2);
    Vx = M(:, 3);
    Vy = M(:, 4);
    Theta = M(:, 5);
    Omega = M(:, 6);

    clf;
    hold on;
    plot(T, [X, Y, Vx, Vy, Theta, Omega], 'LineWidth', 4);

    xMin = min(X);
    xMax = max(X);
    yMin = min(Y);
    yMax = max(Y);

    xlabel('magnitude');
    ylabel('time (s)');
    title('magnitude vs. time');
    legend('x-position', 'y-position', 'x-velocity', 'y-velocity', 'theta', 'omega');

    function [value, isterminal, direction] = event(t, Y)
        value = Y(2);
        isterminal = 1;
        direction = 0;
    end
end
