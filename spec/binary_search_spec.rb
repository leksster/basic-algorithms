# frozen_string_literal: true

# BinarySearch tests
require 'binary_search'

describe BinarySearch do
  context 'correct responses' do
    it 'first position' do
      expect(described_class.new(1, [1, 2, 3, 4, 5, 7, 60, 68]).call).to eq 0
    end

    it 'last position' do
      expect(described_class.new(7, [1, 2, 3, 4, 5, 7, 9]).call).to eq 5
    end

    it 'middle position' do
      expect(described_class.new(4, [2, 3, 4, 6, 8, 10]).call).to eq 2
    end
  end

  context 'not found' do
    it 'returns -1' do
      expect(described_class.new(666, [2, 3, 4, 6, 8, 10]).call).to eq(-1)
    end
  end
end
