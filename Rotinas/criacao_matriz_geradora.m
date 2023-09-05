function [G, H] = criacao_matriz_geradora()

    H = criacao_matriz_checagem_paridade();
    P = H(:,4:7);
    G = [P' eye(4)];
end

