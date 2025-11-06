#  > stock_picker([17,3,6,9,15,8,6,1,10])
#  => [1,4]  # for a profit of $15 - $3 == $12

def stock_picker(arr)
  result = [0, 0]
  for i in 0...arr.length
    for j in i + 1...arr.length
      if arr[i] < arr[j] and arr[j] - arr[i] > arr[result[1]] - arr[result[0]]
        result[0] = i
        result[1] = j
      end
    end
  end
  result
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
