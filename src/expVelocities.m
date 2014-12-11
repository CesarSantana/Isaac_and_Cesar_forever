function expThetas
    load('../data/0164_data.csv');
    T164 = X0164_data(3:end, 1);
    VX164 = X0164_data(3:end, 4);
    VY164 = X0164_data(3:end, 5);

    load('../data/0169_data.csv');
    T169 = X0169_data(3:end, 1);
    VX169 = X0169_data(3:end, 4);
    VY169 = X0169_data(3:end, 5);

    load('../data/0177_data.csv');
    T177 = X0177_data(3:end, 1);
    VX177 = X0177_data(3:end, 4);
    VY177 = X0177_data(3:end, 5);

    load('../data/0179_data.csv');
    T179 = X0179_data(3:end, 1);
    VX179 = X0179_data(3:end, 4);
    VY179 = X0179_data(3:end, 5);

        % line up times
    dt = T169(1) - T164(1);
    T169 = T169 - dt;

    dt = T177(1) - T164(1);
    T177 = T177 - dt;

    dt = T179(1) - T164(1);
    T179 = T179 - dt;

    clf;
    hold on;
    %plot(T164, VX164, 'r', 'LineWidth', 4);
    %plot(T164, VY164, 'b', 'LineWidth', 4);
    %plot(T169, VX169, 'r', 'LineWidth', 4);
    %plot(T169, VY169, 'b', 'LineWidth', 4);
    %plot(T177, VX177, 'r', 'LineWidth', 4);
    %plot(T177, VY177, 'b', 'LineWidth', 4);
    plot(T179, VX179, 'r', 'LineWidth', 4);
    plot(T179, VY179, 'b', 'LineWidth', 4);

    xlabel('time (s)');
    ylabel('velocity (m/s)');
    title('velocity vs. time');
    legend('x-velocity', 'y-velocity');

end