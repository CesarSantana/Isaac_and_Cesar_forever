function velocity_plot
    [T, M] = cointoss_ode;
    
    clf;
    hold on;
    plot(T, M(:, 3), 'LineWidth', 4, 'Color', colors(1));
    plot(T, M(:, 4), 'LineWidth', 4, 'Color', colors(4));

    xlim([0, 2.75]);
    ylim([-15, 15]);
    
    xlabel('time (s)');
    ylabel('velocity (m/s)');
    title('velocity vs. time');
end
