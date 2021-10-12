def rec(number, i = 2 ,arr = [0,1])
    if number == 0
        return [0]
    elsif i == number
        return arr
    end

    arr.push(arr[-1]+arr[-2])

    rec(number,i = i+1,arr)
end

p rec(20)