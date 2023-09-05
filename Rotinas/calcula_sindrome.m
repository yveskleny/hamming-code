function sindrome = calcula_sindrome(palavra_codigo_recebida, H)
    H = criacao_matriz_checagem_paridade;
    
    sindrome = mod(palavra_codigo_recebida*H',2);
    
    
        
end