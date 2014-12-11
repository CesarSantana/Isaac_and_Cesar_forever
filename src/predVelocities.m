function predVelocities
    [T, M] = cointoss_ode;

    X = M(:, 1);
    Y = M(:, 2);
    Vx = M(:, 3);
    Vy = M(:, 4);
    Theta = M(:, 5);
    Omega = M(:, 6);

    clf;
    hold on;

    plot(T, Vx, 'Color', 'r', 'LineWidth', 4);
    plot(T, Vy, 'Color', 'b', 'LineWidth', 4);

    xlabel('time (s)');
    ylabel('velocity (m/s)');
    title('velocity vs. time');
    legend('x-velocity', 'y-velocity');
end
