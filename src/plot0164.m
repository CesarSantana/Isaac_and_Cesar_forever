function plot0164
    load 0164_data.csv;
    T = X0164_data(3:end, 1);
    X = X0164_data(3:end, 2);
    Y = X0164_data(3:end, 3);
    VX = X0164_data(3:end, 4);
    VY = X0164_data(3:end, 5);
    AX = X0164_data(3:end, 6);
    AY = X0164_data(3:end, 7);

    load 0179_rotation.csv;
    T1 = X0179_rotation(:, 1);
    Theta = X0179_rotation(:, 2);

    clf;
    hold on;
    plot(T1, Theta, 'g', 'LineWidth', 4);

end
