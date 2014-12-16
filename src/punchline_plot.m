function punchline_plot
    J = load('punchline_impulses.csv');
    D = load('punchline_distances.csv');
    R = load('punchline_results.csv');

    D = D .* 1000;

    J = J(1:300);
    D = D(1:300);
    R = R(1:300, 1:300);

    minR = min(R(:));
    maxR = max(R(:));

    clf;
    colormap(jet(maxR + 1));
    pc = contourf(J, D, R);

    cb = colorbar;
    set(cb, 'YTick', minR:maxR);
    ylabel(cb, 'flips');

    xlabel('impulse (Ns)');
    ylabel('distance (mm)');
end
