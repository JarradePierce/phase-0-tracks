
#release 0
def search_array(arr, idx)
	count = 0
	until count == arr.length
		if arr[count] == idx
			return count
		end
		count += 1
	end
end
arr = [23, 44, 25, 99]
p search_array(arr, 1)


#release 1
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

puts fib(10)

















