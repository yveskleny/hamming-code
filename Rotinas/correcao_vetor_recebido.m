function palavra_codigo = correcao_vetor_recebido(vetor_recebido,indice_erro)
    vetor_correcao = zeros(1,length(vetor_recebido));
    vetor_correcao(indice_erro) = 1;
    palavra_codigo = mod(vetor_recebido + vetor_correcao, 2);
end