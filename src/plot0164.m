function plot0164
    load('../data/0164_data.csv');
    T = X0164_data(3:end, 1);
    X = X0164_data(3:end, 2);
    Y = X0164_data(3:end, 3);
    VX = X0164_data(3:end, 4);
    VY = X0164_data(3:end, 5);
    AX = X0164_data(3:end, 6);
    AY = X0164_data(3:end, 7);

    load('../data/0164_rotation.csv');
    T164 = X0164_rotation(:, 1);
    Theta164 = X0164_rotation(:, 2);

    load('../data/0169_rotation.csv');
    T169 = X0169_rotation(:, 1);
    Theta169 = X0169_rotation(:, 2);

    load('../data/0177_rotation.csv');
    T177 = X0177_rotation(:, 1);
    Theta177 = X0177_rotation(:, 2);

    load('../data/0179_rotation.csv');
    T179 = X0179_rotation(:, 1);
    Theta179 = X0179_rotation(:, 2);

    % line up times
    dt = T169(1) - T164(1);
    T169 = T169 - dt;

    dt = T177(1) - T164(1);
    T177 = T177 - dt;

    dt = T179(1) - T164(1);
    T179 = T179 - dt;

    clf;
    hold on;
    plot(T164, Theta164, 'r', 'LineWidth', 4);
    plot(T169, Theta169, 'b', 'LineWidth', 4);
    plot(T177, Theta177, 'g', 'LineWidth', 4);
    plot(T179, Theta179, 'k', 'LineWidth', 4);

    xlabel('time (s)');
    ylabel('theta (degrees)');
    title('theta vs. time');
    legend('toss 1', 'toss 2', 'toss 3', 'toss 4');

end
