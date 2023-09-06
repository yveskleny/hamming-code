function palavra_codigo_corrigida = correcao_erro(sindrome, H, palavra_codigo_recebida)
    indice_erro = find(ismember(H', sindrome,"rows"));
    
    correcao = zeros(1,length(palavra_codigo_recebida));
    correcao(indice_erro) = 1;
    
    palavra_codigo_corrigida = mod(palavra_codigo_recebida + correcao,2);
end