#fibinacci array

def fib(num)
  arr = [0]
  num.times do |i|
    if i==0
      arr[i] = 0
    elsif i==1
      arr[i] = 1
    else
      arr[i] = arr[i-1] + arr[i-2]
    end  
  end

  return arr[0..num]
end

puts fib(100)
