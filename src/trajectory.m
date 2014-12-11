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
    plot(X, Y, 'LineWidth', 4);

    xMin = min(X);
    xMax = max(X);
    yMin = min(Y);
    yMax = max(Y);

    axis([xMin, xMax, yMin, yMax]);

    xlabel('x (m)');
    ylabel('y (m)');
    title('position vs. time');

    function [value, isterminal, direction] = event(t, Y)
        value = Y(2);
        isterminal = 1;
        direction = 0;
    end
end
