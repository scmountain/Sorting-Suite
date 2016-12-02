class InsertionSort
  def sort(input)
    unsorted = input
    sorted = []
    until unsorted.empty?
      sorted.unshift(unsorted.shift)
      (sorted.length-1).times do |i|
        if sorted[i] > sorted [i+1]
          sorted[i+1], sorted[i] = sorted[i], sorted[i+1]
        end
      end
    end
    puts sorted.to_s
  end
end


sorter = InsertionSort.new
upcase_letters = ("A".."Z").to_a.shuffle
    downcase_letters = ("a".."z").to_a.shuffle
    test_data = upcase_letters.zip(downcase_letters).flatten
    sorter.sort(test_data) #dano test of terror
