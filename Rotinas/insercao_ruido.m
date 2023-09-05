function palavra_codigo_recebida = insercao_ruido(palavra_codigo_enviada)
   erros = [zeros(1,7); eye(7)];
   pos_erro = randi(8);
   
   palavra_codigo_recebida = xor(palavra_codigo_enviada, erros(pos_erro,:));
    
end

