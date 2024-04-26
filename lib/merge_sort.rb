def merge_sort(num_arr)
  def merge(left, right)
    return left if right.empty?
    return right if left.empty?

    smallest_num = left.first <= right.first ? left.shift : right.shift
    
    [smallest_num].concat(merge(left, right))
  end

  return num_arr if num_arr.length <= 1
  
  left = num_arr.slice!(0, num_arr.length / 2)
  right = num_arr

  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)
  
  merge(sorted_left, sorted_right)
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
p merge_sort([105, 79, 100, 110])