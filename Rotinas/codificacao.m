function [listaPalavrasCodigo, G, H] = codificacao(matrizMensagens)

    [tamanhoMensagem, qtdMensagens] = size(matrizMensagens);
    
    listaPalavrasCodigo = zeros(7,qtdMensagens);
    [G, H] = criacao_matriz_geradora;

    
    for i = 1:qtdMensagens
       mensagem = matrizMensagens(:, i)'; 
       palavraCodigo = mod(mensagem*G,2);
       listaPalavrasCodigo(:,i) = palavraCodigo';
    end

end