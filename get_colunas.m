function [col1,col2,col3,colunas] = get_colunas(n,col1,col2,col3,colunas)
    if (n==1) || (n==4) || (n==7) || (n==10) || (n==13) || (n==16) || (n==19) ...
        || (n==22) || (n==25) || (n==28) || (n==31) || (n==34)
        col1 = col1 + 1;
        colunas(1,1) = col1;
    end
    if (n==2) || (n==5) || (n==8) || (n==11) || (n==14) || (n==17) || (n==20) ...
        || (n==23) || (n==26) || (n==29) || (n==32) || (n==35)
        col2 = col2 + 1;
        colunas(1,2) = col2;
    end
    if (n==3) || (n==6) || (n==9) || (n==12) || (n==15) || (n==18) || (n==21) ...
        || (n==24) || (n==27) || (n==30) || (n==33) || (n==36)
        col3 = col3 + 1;
        colunas(1,3) = col3;
    end

end