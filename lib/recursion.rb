require 'pry-byebug'

def fibs(num)
  fib_arr = [0, 1]
  index = 2
  while index < num
    fib_arr << fib_arr[index - 2] + fib_arr[index - 1]
    index += 1
  end
  fib_arr
end

def fibs_rec(num, fib_arr = [0])
  return fib_arr if num < 2 

  fib_arr << fib_arr[-1] + (fib_arr[-2] || 1)
  fibs_rec(num - 1, fib_arr)
end

p fibs(8)
p fibs_rec(8)