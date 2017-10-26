require 'pry-byebug'
require 'recursive_merge_sort'

describe RecursiveMergeSort do
  context 'correct responses' do
    it 'is successfull' do
      expect(described_class.call([5, 1, 5, 2, 65, 643, 1, 242, 25, 123, 45, 125, 64]))
        .to eq [1, 1, 2, 5, 5, 25, 45, 64, 65, 123, 125, 242, 643]
    end
  end
end
