function sinalBinario = converte2binario(amostras)
    N = length(amostras);
    sinalBinario = zeros(12, N);
    for i = 1:N
        stringBinaria = dec2bin(amostras(i),12);
        sinalBinario(:,i) = str2num(stringBinaria(:));
    end
end