function main()
    nums = map(line -> parse(Int64, line), readlines("input.txt"))
    println(reduce((n, i) -> nums[i] + nums[i+1] + nums[i+2] > nums[i-1] + nums[i] + nums[i+1] ? n + 1 : n, keys(nums)[2:end-2], init = 0))
end

main()