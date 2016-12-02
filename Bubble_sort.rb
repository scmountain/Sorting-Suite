require 'pry'
class BubbleSort
  def sort(input)
    loop do
      changed = false
      input_length = input.length
      # find first element and second element
      (input_length - 1).times do |i|
        # compare 2 elements
          if input[i] > input[i+1]
          # if 1st element than second swap
          input[i], input[i+1] = input [i+1], input[i]
          # binding.pry
          changed = true
          end

      end
      break if !changed
    end
    p input
  end
end

sorter = BubbleSort.new
# sorter.sort(["d", "b"])
# sorter.sort(["d", "b", "a"])
# sorter.sort(["d", "b", "a", "c"])
sorter.sort(("A".."Z").to_a.shuffle)
