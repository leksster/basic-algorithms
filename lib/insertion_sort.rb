# Insertion sort iterates, consuming one input element each repetition,
# and growing a sorted output list. At each iteration, insertion sort removes
# one element from the input data, finds the location it belongs within
# the sorted list, and inserts it there. It repeats until no input elements remain.
class InsertionSort
  def initialize(array)
    @array = array
    @result = [array[0]]
  end

  def call
    array.delete_at(0)

    array.each_with_index do |index, _|
      final_index = 0

      while final_index < result.length
        if index <= result[final_index]
          result.insert(final_index, index)
          break
        elsif final_index == result.length - 1
          result.insert(final_index + 1, index)
          break
        end

        final_index += 1
      end
    end

    result
  end

  private

  attr_accessor :array, :result
end
