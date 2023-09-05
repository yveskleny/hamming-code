function [c1, c2, G, H] = codificacao(palavra_de_dados)

    m1 = palavra_de_dados(1:4);
    m2 = palavra_de_dados(5:8);
    
    [G H] = criacao_matriz_geradora;
    
    
    c1 = mod(m1*G,2);
    c2 = mod(m2*G,2);
    
end