function G = criacao_matriz_geradora()

    I = eye(4);
    p1 = [0 1 1 1]; 
    p2 = [1 0 1 1]; 
    p3 = [1 1 0 1]; 
    %p4 = [1 1 1 0];
    P = [p1' p2' p3'];
    
    G = [P I];

end

