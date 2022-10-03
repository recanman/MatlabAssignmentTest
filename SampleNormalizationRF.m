function z = SampleNormalizationRF(m)
    if isa(m, "double") == 0
        error("Matrix m must be a double.")
    end

    m = double(m);
    x = sum(m);
   
    for i = 1:1: size(m, 1)
        z(:,i) = m(:,i) / x(i);
    end
end