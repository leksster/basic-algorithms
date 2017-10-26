require 'selection_sort'

describe SelectionSort do
  context '#index_of_minimal' do
    let(:some_array) { [1, 6, 2, 7, 5, 9, 8, 3, 10, 262, 102, 32] }
    let(:selection) { described_class.new(some_array) }

    it 'returns correct index' do
      expect(selection.send(:index_of_minimal, 1)).to eq 2
      expect(selection.send(:index_of_minimal, 2)).to eq 2
      expect(selection.send(:index_of_minimal, 3)).to eq 7
      expect(selection.send(:index_of_minimal, 9)).to eq 11
    end

    it 'returns nil if out of size' do
      expect(selection.send(:index_of_minimal, 100)).to be_nil
    end
  end

  context '#swap' do
    let(:some_array) { [1, 6, 2, 7, 5, 9, 8, 3, 10, 262, 102, 32] }
    let(:selection) { described_class.new(some_array) }

    it 'returns correct index' do
      expect { selection.send(:swap, 3, 6) }
        .to change { selection.send(:array) }
        .from([1, 6, 2, 7, 5, 9, 8, 3, 10, 262, 102, 32])
        .to([1, 6, 2, 8, 5, 9, 7, 3, 10, 262, 102, 32])
    end

    it 'returns nil if value does not exist' do
      expect(selection.send(:swap, 1121, 666)).to be_nil
    end
  end

  context '#call' do
    it 'sorts positive different values' do
      list = [1, 15, 8, 2, 102, 262, 10]
      expect(described_class.new(list).call).to eq [1, 2, 8, 10, 15, 102, 262]
    end

    it 'sorts with negative values' do
      list = [1, -15, 8, -2, 102, 262, -10]
      expect(described_class.new(list).call)
        .to eq [-15, -10, -2, 1, 8, 102, 262]
    end

    it 'sorts with repeated values' do
      list = [8, 1, 8, -10, 10, -2, -10]
      expect(described_class.new(list).call).to eq [-10, -10, -2, 1, 8, 8, 10]
    end
  end
end
