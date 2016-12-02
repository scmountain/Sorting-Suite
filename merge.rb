class MergeSort
  def merge_sort(arrays)
    ruturn arrays if arrays.count == 1

    middle  = arrays[0..(arrays.count / 2) - 1 ]
    left = arrays[0..middle.count - 1]
    right = arrays[middle.count..arrays.count]

    left_array = merge_sort(left)
    right_array = merge_sort(right)
  end
  puts left_array
  puts right_array
end

  # def sort(input)
  #   loop do
  #     changed = false
  #     input_length = input.length
  #     # find first element and second element
  #     (input_length - 1).times do |i|
  #       # compare 2 elements
  #         if input[i] > input[i+1]
  #         # if 1st element than second swap
  #         input[i], input[i+1] = input [i+1], input[i]
  #         # binding.pry
  #         changed = true
  #         end
  #
  #     end
  #     break if !changed
  #   end
  #   p input
  # end


sorter = InsertionSort.new
sorter.sort(["d", "b"])
