require 'insertion_sort'

describe InsertionSort do
  context 'correct responses' do
    it 'is successfull' do
      expect(described_class.new([1, 5, 7, 9, 2, 3, 5]).call).to eq [1, 2, 3, 5, 5, 7, 9]
    end
  end
end
