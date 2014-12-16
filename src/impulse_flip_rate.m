function impulse_flip_rate
    J = load('small_impulse_ode_j.csv');
    R = load('small_impulse_ode_res.csv');

    minFlips = min(R(:));
    maxFlips = max(R(:));

    % find impulse diff between flips
    flip = 0;
    prevIndex = 1;
    for index = 1:length(J)
        currentFlip = R(index);
        if currentFlip >= 20
            J(index)
            break;
        end
        if currentFlip > flip
            currentFlip
            F(flip + 1) = J(index) - J(prevIndex);
            prevIndex = index;
            flip = currentFlip;
        end
    end

    length(F)
    length(minFlips:maxFlips-1)

    clf;
    plot(0:length(F)-1, F, 'LineWidth', 6, 'Color', colors(4));
    xlabel('flips');
    ylabel('change in impulse (J)');
    title('impulse needed for next flip');

    xlim([0, 17]);
end
