function res = cointoss_plot()
    ode45(@cointoss, [0, 5], [0, 0, 0, 20]);
    xlabel('time (s)');
    ylabel('magnitude');
    title('magnitude vs. time');

    legend('x-position', 'y-positon', 'x-velocity', 'y-velocity');
end
