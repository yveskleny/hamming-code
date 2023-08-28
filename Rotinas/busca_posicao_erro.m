function indice = busca_posicao_erro(sindrome, H)
    indice = find(ismember(H', sindrome,"rows"));
end

