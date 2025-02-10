require 'pry-byebug'

def bubble_sort(array)
  times = array.length - 1
  times.times do
    array.each_with_index do |element, index|
      rightElement = array[index + 1]
      if (index + 1) == array.length
        break
      elsif element > rightElement
        array[index] = rightElement
        array[index + 1] = element
        binding.pry
      end
    end
  end
  return array
end

p bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]
