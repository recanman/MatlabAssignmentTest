function marked = MarkLowCounts(m, Q)
    if isa(m, "double") == 0
        error("Matrix m must be a double.")
    end

    if and(Q >= 0, Q <= 1) == 0
        error("Quantile Q must be between 0 and 1.")
    end

    mFlat=reshape(m, [1 size(m,1)*size(m,2)]);
    threshold = quantile(mFlat, Q);

    marked = []

    for i = 1:1:size(m, 1)
        low = m(i, :) < threshold;
        marked(i) = any(low > 0);
    end
end