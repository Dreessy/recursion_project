def merge_sort(array)
  return array if array.length <= 1

  index_mid = array.length / 2
  index_right = array[index_mid..-1]
  index_left = array[0...index_mid]
  left_sorted = merge_sort(index_left)
  right_sorted = merge_sort(index_right)
  arrs_sort(left_sorted, right_sorted)
end

def arrs_sort(left_arr, right_arr)
  result = []
  left = 0
  right = 0

  while left < left_arr.length && right < right_arr.length
    if left_arr[left] < right_arr[right]
      result << left_arr[left]
      left += 1
    else
      result << right_arr[right]
      right += 1
    end
  end
  if left_arr[left]
    result.concat(left_arr[left..-1])
  else
    result.concat(right_arr[right..-1])
  end
  result
end

p merge_sort([3, 7, 1, 0, 7, 2, 6])
