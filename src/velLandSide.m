function velLandSide
    times = 5000
    minV = 0;
    maxV = 50;
    V = linspace(minV, maxV, times);

    clf;
    side = -1;
    k = 1;
    for i = 1:times
        i
        R(i) = cointoss_ground(V(i));
        if R(i) ~= side
            S(k, 1:2) = [V(i), R(i)];
            side = R(i);
            k = k + 1;
        end
    end

    hold on;
    S
    for i = 1:(size(S(:, 1)) - 1)
        x = S(i, 1);
        y = 0;
        v2 = S(i + 1, 1)
        v1 = S(i, 1)
        w = v2 - v1;
        h = 1;

        if S(i, 2) == 0
            color = 'red';
        else
            color = 'blue';
        end

        rectangle('Position', [x, y, w, h], 'EdgeColor', color, 'FaceColor', color); 

        xlabel('initial velocity (m/s)');
        title('coin land side');

 end
