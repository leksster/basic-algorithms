# frozen_string_literal: true

# Selection Sort
# The algorithm proceeds by finding the smallest
# (or largest, depending on sorting order) element
# in the unsorted sublist, exchanging (swapping)
# it with the leftmost unsorted element
# (putting it in sorted order), and moving
# the sublist boundaries one element to the right.
class SelectionSort
  def initialize(array)
    @array = array
  end

  def call
    array.each_with_index do |_, index|
      start = index_of_minimal(index)
      swap(start, index)
    end
    array
  end

  private

  attr_accessor :array

  def swap(first_index, second_index)
    memo = array[first_index]
    array[first_index] = array[second_index]
    array[second_index] = memo
  end

  def index_of_minimal(start_from)
    min_index = start_from if array[start_from]
    array.drop(start_from).each_with_index do |value, index|
      min_index = index + start_from if value < array[min_index]
    end
    min_index
  end
end
