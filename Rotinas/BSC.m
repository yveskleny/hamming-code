function sequenciaRecebida = BSC(sequenciaEnviada)
    sequenciaRecebida = zeros(1, length(sequenciaEnviada));
    
    for i = 1:length(sequenciaEnviada)
       pe = rand();
       
       if pe > 0.1
          sequenciaRecebida(i) = sequenciaEnviada(i);
       else
          sequenciaRecebida(i) = mod(sequenciaEnviada(i) + 1,2);
       end
        
    end

end