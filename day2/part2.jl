function main()
    # Creates an Array of Arrays of split instruction lines
    instructions = map(line -> split(line, " ")[1] => parse(Int64, split(line, " ")[2]), readlines("input.txt"))

    calcs = reduce(calculate, instructions, init = Dict{String,Int64}("forward" => 0, "aim" => 0, "depth" => 0))
    println(calcs["forward"] * calcs["depth"])
end

function calculate(calcs, instruction)
    if instruction[1] == "forward"
        calcs["forward"] += instruction[2]
        calcs["depth"] += instruction[2] * calcs["aim"]
    else
        calcs["aim"] += instruction[1] == "down" ? instruction[2] : -instruction[2]
    end

    return calcs
end

main()