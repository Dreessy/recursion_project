def fibs(number)
  n = 0
  arr = []

  for i in 0..number - 1
    if i == 0
      arr << 0
    elsif i == 1
      arr << 1
    else
      arr.push(arr[-1] + arr[-2])
    end
  end
  return arr
end

p fibs(20)
