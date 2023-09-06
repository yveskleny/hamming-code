function [qtd_erros, mensagensDecodificadas] = decodificacao(palavrasCodigoRecebidas, H)
    
    [tamanhoPalavraCodigo, qtd_palavras] = size(palavrasCodigoRecebidas);
    mensagensDecodificadas = zeros(4, qtd_palavras);
    qtd_erros = 0;

    for i = 1:qtd_palavras
       palavraRecebida = palavrasCodigoRecebidas(:,i)';
       sindrome = mod(palavraRecebida*H',2);
       if sindrome == false
           mensagensDecodificadas(:,i) = palavraRecebida(4:tamanhoPalavraCodigo)';
       else
           qtd_erros = qtd_erros + 1;
           palavraCorrigida = correcao_erro(sindrome,H, palavraRecebida);
           mensagensDecodificadas(:,i) = palavraCorrigida(4:tamanhoPalavraCodigo)';
       end
       
       
    end
end