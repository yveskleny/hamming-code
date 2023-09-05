function H = criacao_matriz_checagem_paridade()
    M = [1:7];
    M = dec2bin(M);
    H = eye(3);
    
    for i = 3:7
        if i == 4
            continue
        end
        linha = M(i,:);
        coluna = str2num(linha(:));
        H = [H coluna];
    end
end

