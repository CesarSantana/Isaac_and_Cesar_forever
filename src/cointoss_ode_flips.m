function cointoss_ode_flips
    [T, M] = cointoss_ode;

    X = M(:, 1);
    Y = M(:, 2);
    Vx = M(:, 3);
    Vy = M(:, 4);
    Theta = M(:, 5);
    Omega = M(:, 6);

    clf;
    hold on;

    tMin = min(T);
    tMax = max(T);
    yMin = min(Y);
    yMax = max(Y);

    theta = 0;
    prevT = 0;
    color = 'r';
    for i = 1:size(Theta)
        if Theta(i) - theta >= 180
            drawRect(prevT, T(i), yMin, yMax, color);

            if  color == 'r'
                color = 'b';
            else
                color = 'r';
            end
            theta = theta + 180;
            prevT = T(i);
        end
    end
    drawRect(prevT, T(end), yMin, yMax, color);

    axis([tMin, tMax, yMin, yMax]);

    plot(T, Y, 'LineWidth', 8, 'Color', 'k');

    xlabel('time (s)');
    ylabel('y-position (m)');
    title('position vs. time');

    % weird legend
    plot([-10, -10], [-10, -10], 'LineWidth', 8, 'Color', 'r');
    plot([-10, -10], [-10, -10], 'LineWidth', 8, 'Color', 'b');
    legend('position', 'heads', 'tails');

    function drawRect(x1, x2, y1, y2, color)
        w = x2 - x1;
        h = y2 - y1; 
        rectangle('Position', [x1, y1, w, h], 'FaceColor', color, 'EdgeColor', color);
    end
end
