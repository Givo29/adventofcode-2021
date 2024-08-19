function main()
    # Get input as Array of Arrays
    input = reshape(vcat(map(line -> collect(line), readlines("input.txt"))...), (:, 12))
    println(input)
end

main()