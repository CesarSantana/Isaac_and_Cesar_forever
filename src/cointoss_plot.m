function res = cointoss_plot()
    [T, M] = cointoss_ode;

    subplot(2, 1, 1);

    hold on;
    plot(T, M(:, 1), 'LineWidth', 6, 'Color', colors(2));
    plot(T, M(:, 2), 'LineWidth', 6, 'Color', colors(3));
    xlabel('time (s)');
    ylabel('position');
    title('positon vs. time');
    legend('x-position', 'y-positon');

    xlim([0, 2.7]);

    subplot(2, 1, 2);
    
    hold on;
    plot(T, M(:, 3), 'LineWidth', 6, 'Color', colors(4));
    plot(T, M(:, 4), 'LineWidth', 6, 'Color', colors(5));
    xlabel('time (s)');
    ylabel('velocity');
    title('velocity vs. time');
    legend('x-velocity', 'y-velocity');

    xlim([0, 2.7]);
end
