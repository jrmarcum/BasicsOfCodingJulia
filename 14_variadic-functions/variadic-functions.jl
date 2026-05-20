function sum(nums...)
    print("[", join(nums, " "), "] ")
    total = 0
    for num in nums
        total += num
    end
    println(total)
end

sum(1, 2)
sum(1, 2, 3)

nums = [1, 2, 3, 4]
sum(nums...)
