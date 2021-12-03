function main()
    # Creates an Array of Dicts with instructions as keys and amounts as values.
    instructions = map(line -> Dict(split(line, " ")[1] => parse(Int64, split(line, " ")[2])), readlines("input.txt"))
    # Merge Array of Dicts into one Dict, adding all the totals of the instructions
    calculated_instructions = foldl(mergewith!(+), instructions; init=Dict{String, Int64}())
    # Make necessary calculations on instructions and print to terminal
    println(get(calculated_instructions, "forward", 0) * (get(calculated_instructions, "down", 0) - get(calculated_instructions, "up", 0)))
end

main()