function res = conserve_energy()
%proves conservation of energy
    [T,M] = cointoss_ode;
    X = M(:,1);
    Y = M(:,2);
    Vx = M(:,3);
    Vy = M(:,4);
    theta = M(:,5);
    omega = M(:,6);
    m = 0.00567;
    rho = 1.2041;
    r = 12.13e-3;
    g = 9.8;
    Inertia = r^2 * m * 1/4;
    V = sqrt(Vx.^2 +Vy.^2);
    function res = potential()
        res = m * g * Y;
       
    end 
    function res = translational()
        res = 1/2 * m * V.^2;
       
    end
    function res = rotational()
        res = 1/2 * Inertia * omega.^2;
        
    end
    total = rotational + translational + potential;
    res = total;
    clf;
    hold on;
    plot (T, total, 'LineWidth', 4, 'Color', colors(4))
    plot (T, rotational, 'r', 'LineWidth',4, 'Color', colors(2))
    plot (T, translational, 'g', 'LineWidth', 4, 'Color', colors(5))
    plot (T, potential, 'k', 'LineWidth', 4, 'Color', colors(3))
    legend ( 'total','rotational', 'translational', 'potential');
    xlabel ('time (s)')
    ylabel ('energy (joules)')
    title ('Conservation of Energy')

    xlim([0, 0.3]);
    ylim([0, .08]);
   
end
