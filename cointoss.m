function res = cointoss(t,W)
    P=W(1:2);
    V=W(3:4); 
    Theta=W(5:6);
    m=0.00567;
    dtdt=omega %change in angle
    function res = omega()
        res = [0;0];
    end
    dpdt=V
    dvdt=acceleration
    function res = acceleration()
        g=9.8;
        res =[0;-g];
    end
    res=[dpdt;dvdt;dtdt];
end