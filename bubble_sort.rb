# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def swap(arr, left, right)
  temp = arr[left]
  arr[left] = arr[right]
  arr[right] = temp
end

def bubble_sort(arr)
  (arr.length - 1).times do |i|
    for j in 0..arr.length - (i + 2)
      if arr[j] > arr[j + 1]
        swap(arr, j, j + 1)
      end
    end
  end

  arr
end

puts bubble_sort([4,3,78,2,0,2])
