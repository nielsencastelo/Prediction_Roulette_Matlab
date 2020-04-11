function cor = get_cor(valor)
    if (valor == 1) || (valor == 3) || (valor == 5) || (valor == 7) || (valor == 9) ...
            || (valor == 12) || (valor == 14) || (valor == 16) || (valor == 18) ...
            || (valor == 19) || (valor == 21) || (valor == 23) || (valor == 25) ...
            || (valor == 27) || (valor == 30) || (valor == 32) || (valor == 34) || (valor == 36)
        cor = 'v';
    else
        cor = 'p';
    end
end