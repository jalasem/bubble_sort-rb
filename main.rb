# this function accepts an array of numbers to be sorted
# it sorts them and returns the sorted array
def bubble_sort(arr)
  sorted = false # a control for the sorting while loop

  while (!sorted) do # keep iterating while sorted is false
    operate = false
    arr.length.times do |i|
      current_number = arr[i]
      next_number = arr[i + 1] || current_number

      if current_number > next_number # compare the current and next number then swap is current is bigger than next
        arr[i] = next_number
        arr[i + 1] = current_number 
        operate = true
      end
    end

    if operate == false
      sorted = true
    end
  end

  puts "#{arr}"
  return arr
end

bubble_sort([4,3,78,2,0,2]) # [0,2,2,3,4,78]
bubble_sort([23, 8, 12, 0, 12, 7, 2, 4, 10, 1]) # [0, 1, 2, 4, 7, 8, 10, 12, 12, 23]
