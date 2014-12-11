function res = airResOpt()
    res = fzero(@airResError, 0.1);

    function error = airResError(dragCoeff)
        error = -60 - cointoss_ode_air(dragCoeff);
    end
end
