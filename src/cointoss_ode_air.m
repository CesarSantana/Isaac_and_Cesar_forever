function res = cointoss_ode_air(dragCoeff)
    % options = odeset('Event', @event);
    % ode45(@cointoss, [0, 5], [0, 0, 0, 20, 0, 2], options);
    [T, M] = ode45(@cointoss_air, [0, 25], [0, 0, 0, 25, 0, 670, dragCoeff]);

    X = M(:, 1);
    Y = M(:, 2);
    Vx = M(:, 3);
    Vy = M(:, 4);
    Theta = M(:, 5);
    Omega = M(:, 6);

    hold on;
    res = Vy(end);

    xlabel('time (s)');
    ylabel('magnitude');
    title('magnitude vs. time');
    legend('x-position', 'y-position', 'x-velocity', 'y-velocity');

  %  function [value, isdeterminant, direction] = event(t, Y)
  %      theta = Y(5);
  %      value = mod(theta, (pi / 2));
  %      isdeterminant = 1;
  %      direction = 0;

  %      if value < 0.01
  %          plot([t, t], [-50, 20]);
  %      end
  %  end
end
