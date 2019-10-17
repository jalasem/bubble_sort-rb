# frozen_string_literal: true

# this function accepts an array of numbers to be sorted
# it sorts them and returns the sorted array
def bubble_sort(arr)
  length = arr.length - 1
  loop do # keep iterating while sorted is false
    sorted = false
    length .times do |i|
      if arr[i] > arr[i + 1] # compare the current and next number then swap is current is bigger than next
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = true
      end
    end
    break unless sorted
  end
  arr
end

bubble_sort([4, 3, 78, 2, 0, 2]) # [0,2,2,3,4,78]
bubble_sort([23, 8, 12, 0, 12, 7, 2, 4, 10, 1]) # [0, 1, 2, 4, 7, 8, 10, 12, 12, 23]

def bubble_sort_by(arr)
  len = arr.length - 1
  loop do
    sorted = false
    len.times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = true
      end
    end
    break unless sorted
  end
  arr
end

bubble_sort_by %w[hi hello hey] do |left, right|
  left.length - right.length
end
