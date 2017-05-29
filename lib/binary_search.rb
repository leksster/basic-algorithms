# frozen_string_literal: true

# Binary Search ruby implementation
# search algorithm that finds the position
# of a target value within a sorted array
class BinarySearch
  def initialize(target, array)
    @array = array
    @target = target
    @min = 0
    @max = array.length - 1
  end

  def call
    while max >= min
      return guess if array[guess] == target
      next_step
    end
    -1
  end

  private

  attr_reader :array, :target
  attr_accessor :min, :max

  def next_step
    array[guess] < target ? self.min = guess + 1 : self.max = guess - 1
  end

  def guess
    (max + min) / 2
  end
end
