function z = SampleCorrelation(m, correlationType)
    if isa(m, "double") == 0
        error("Matrix m must be a double.")
    end

    if or(correlationType == "Pearson", correlationType == "Spearman") == 0
        error("correlationType must be either Pearson or Spearman")
    end

    for i = 1:1:size(m, 2)
        m2 = m;
        m2(:, i) = [];

        for j = 1:size(m2, 2)
            x(j) = corr(m(:, i), m2(:, j), "Type", correlationType);
        end

        z(i) = mean(x);
    end
end