function [r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,rua] = get_ruas(n,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,rua)
    if (n >= 1) && (n <= 3)
        r1 = r1 + 1;
        rua(1,1) = r1;
    end
    if (n >= 4) && (n <= 6)
        r2 = r2 + 1;
        rua(1,2) = r2;
    end
    if (n >= 7) && (n <= 9)
        r3 = r3 + 1;
        rua(1,3) = r3;
    end
    if (n >= 10) && (n <= 12)
        r4 = r4 + 1;
        rua(1,4) = r4;
    end
    if (n >= 13) && (n <= 15)
        r5 = r5 + 1;
        rua(1,5) = r5;
    end
    if (n >= 16) && (n <= 18)
        r6 = r6 + 1;
        rua(1,6) = r6;
    end
    if (n >= 19) && (n <= 21)
        r7 = r7 + 1;
        rua(1,7) = r7;
    end
    if (n >= 22) && (n <= 24)
        r8 = r8 + 1;
        rua(1,8) = r8;
    end
    if (n >= 25) && (n <= 27)
        r9 = r9 + 1;
        rua(1,9) = r9;
    end
    if (n >= 28) && (n <= 30)
        r10 = r10 + 1;
        rua(1,10) = r10;
    end
    if (n >= 31) && (n <= 33)
        r11 = r11 + 1;
        rua(1,11) = r11;
    end
    if (n >= 34) && (n <= 36)
        r12 = r12 + 1;
        rua(1,12) = r12;
    end
end