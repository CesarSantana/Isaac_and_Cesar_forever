function res = air_resistance_vs_theta()
    [T, M] = ode45(@cointoss, [0, 7], [0, 0, 0, 20, 0, 2]);
    V = M(:, 3:4);
    Theta = M(:, 5);

    for i = 1:size(T)
        AR = air_resistance(V(i, :), Theta(i));
        AirRes(i) = AR(2);
    end

    clf;
    hold on;

    subplot(2, 1, 1);
    hold on;
 
    theta = 0;
    while theta < 12
        theta = theta + pi / 2;
        plot([theta, theta], [-0.3, 0.4]);
    end

    plot(Theta, AirRes);
    xlabel('theta (radians)');
    ylabel('air resistance');

    subplot(2, 1, 2);
    hold on;

    theta = 0;
    while theta < 12
        theta = theta + pi / 2;
        plot([theta, theta], [-80, 20]);
    end

    plot(Theta, V(:, 2));
    xlabel('theta (radians)');
    ylabel('velocity');
end
