function distance_flip_rate
    D = load('small_distance_ode_d.csv');
    R = load('small_distance_ode_res.csv');

    minFlips = min(R(:));
    maxFlips = max(R(:));

    % find impulse diff between flips
    flip = 0;
    prevIndex = 1;
    for index = 1:length(D)
        currentFlip = R(index);
        if currentFlip >= 50
            D(index)
            break;
        end
        if currentFlip > flip
            currentFlip
            F(flip + 1) = D(index) - D(prevIndex);
            prevIndex = index;
            flip = currentFlip;
        end
    end

    length(F)
    length(minFlips:maxFlips-1)

    clf;
    plot(0:length(F)-1, F .* 1000, 'LineWidth', 6, 'Color', colors(5));
    xlabel('flips');
    ylabel('change in distance (mm)');
    title('change in distance needed for next flip');

    xlim([0, 40]);
    ylim([0.04, 0.09]);
end
