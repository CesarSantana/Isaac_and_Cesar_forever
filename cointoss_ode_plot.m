function res = cointoss_ode_plot()
    clf;

    % options = odeset('Event', @event);
    % ode45(@cointoss, [0, 5], [0, 0, 0, 20, 0, 2], options);
    ode45(@cointoss, [0, 5], [0, 0, 0, 20, 0, 2]);
    hold on;

    xlabel('time (s)');
    ylabel('magnitude');
    title('magnitude vs. time');
    legend('x-position', 'y-position', 'x-velocity', 'y-velocity', 'theta', 'omega');

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
