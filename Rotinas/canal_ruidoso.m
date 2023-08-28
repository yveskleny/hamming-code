function vetor_recebido = canal_ruidoso(palavra_codigo)
    n = length(palavra_codigo);
    posicao_ruido = randi([1, n])
    vetor_de_erro = zeros(1, n);
    vetor_de_erro(posicao_ruido) = 1;
    
    vetor_recebido = mod(palavra_codigo + vetor_de_erro,2);
    
end

