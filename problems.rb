require "byebug"

def range(num1, num2)
    # return [] if num1 > num2
    return [] if num1 == num2

    range(num1, num2-1) + [num2-1]
end

# p range(1, 5)
# p range(1, 2) #=> [1]
# p range(1, 3) #=> [1, 2] result range[1, 2] + num2
# p range(1, 4) #=> [1, 2, 3]
# p range(1, 1)
# p range(2, 1)

def exp1(base, exponent)
    return 1 if exponent == 0
    
    base * exp1(base, exponent - 1)
end

# p exp1(1, 0)
# p exp1(1, 1)
# p exp1(10 , 2)

def exp2(base, exponent)
    return 1 if exponent == 0
    return base if exponent == 1

    if exponent.odd?
        return base * exp2(base, exponent/2) * exp2(base, exponent/2)
    else
        return exp2(base, exponent/2) * exp2(base, exponent/2)
    end
end

# p exp2(1, 0)
# p exp2(1, 1)
# p exp2(10, 2)
# p exp2(2, 3)
# p exp2(2, 5)
# p exp2(4, 4)

def deep_dup(array)
    results = []
    array.each do |ele|
        if !ele.is_a?(Array)
            results << ele
        else
            flatten_arr = deep_dup(ele)
            results << flatten_arr
        end
    end
    results 
end

# p deep_dup([1, 2, 3, [4, 5, 6]])
# p deep_dup(["a", "b", "c", ["d", "e", "f"]])