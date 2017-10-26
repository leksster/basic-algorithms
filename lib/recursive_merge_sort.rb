# Conceptually, a merge sort works as follows:
# Divide the unsorted list into n sublists, each containing 1 element
# (a list of 1 element is considered sorted).
# Repeatedly merge sublists to produce new sorted sublists
# until there is only 1 sublist remaining. This will be the sorted list.
class RecursiveMergeSort
  def self.call(array)
    return array if array.length <= 1

    middle = array.length / 2

    left = call(array[0...middle])
    right = call(array[middle..-1])
    result = []

    while [left, right].none?(&:empty?) do
      result << (left[0] < right[0] ? left.shift : right.shift)
    end

    result.concat(left).concat(right)
  end
end
