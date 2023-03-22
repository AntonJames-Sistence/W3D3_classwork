def range(num1, num2)
    # return [] if num1 > num2
    return [] if num1 == num2

    range(num1, num2-1) + [num2-1]
end

p range(1, 5)
p range(1, 2) #=> [1]
p range(1, 3) #=> [1, 2] result range[1, 2] + num2
p range(1, 4) #=> [1, 2, 3]
# p range(1, 1)
# p range(2, 1)