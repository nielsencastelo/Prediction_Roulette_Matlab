function [cont1,cont2,cont3,vetor] = get_duzias(n,cont1,cont2,cont3,vetor)
    if (n >= 1) && (n <=12)
        %n1 = horzcat(n1,n);
        cont1 = cont1 + 1;
        vetor(1,1) = cont1;
    end
    if (n >= 13) && (n <=24)
        %n2 = horzcat(n2,n);
        cont2 = cont2 + 1;
        vetor(1,2) = cont2;
    end
    if (n >= 25) && (n <=36)
        %n3 = horzcat(n3,n);
        cont3 = cont3 + 1;
        vetor(1,3) = cont3;
    end
    
end
    