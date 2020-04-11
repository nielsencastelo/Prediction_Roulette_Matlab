function [met1,met2,metade] = get_metade(n,met1,met2,metade)
    if (n >= 1) && (n <= 18)
        met1 = met1 + 1;
        metade(1,1) = met1;
    end

    if (n >=19) && (n <= 36)
        met2 = met2 + 1;
        metade(1,2) = met2;
    end
end