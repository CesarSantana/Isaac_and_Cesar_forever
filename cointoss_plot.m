function res = cointoss_plot()
    ode45(@cointoss, [0, 10], [0, 0, 0, 40]);
    xlabel('time (s)');
    ylabel('magnitude');
    title('magnitude vs. time');

    legend('x-position', 'y-positon', 'x-velocity', 'y-velocity');
end
