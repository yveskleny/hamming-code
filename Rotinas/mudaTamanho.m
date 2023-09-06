function vetor = mudaTamanho(matriz, k)
    [n, m] = size(matriz);
    vetor = reshape(matriz, [k, n*m/k]);
end