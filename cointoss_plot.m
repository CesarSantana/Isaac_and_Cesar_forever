function res = cointoss_plot()
    [T, M] = ode45(@cointoss, [0, 5], [0, 0, 0, 20]);
    size(T)
    size(M)

    subplot(2, 1, 1);

    plot(T, M(:, 1:2));
    xlabel('time (s)');
    ylabel('position');
    title('positon vs. time');
    legend('x-position', 'y-positon');

    subplot(2, 1, 2);

    plot(T, M(:, 3:4));
    xlabel('time (s)');
    ylabel('velocity');
    title('velocity vs. time');
    legend('x-velocity', 'y-velocity');
end
