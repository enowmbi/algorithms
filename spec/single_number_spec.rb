require_relative '../single_number'

RSpec.describe 'single_number' do 
  it 'returns single number in an array' do 
      expect(single_number([5,6,5,7,6])).to equal(7)
  end


end
