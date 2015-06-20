require 'rspec'
require './convert_digit'

describe 'convert_digit' do

  it 'should convert digits to text' do
    expect(convert_digit(3) == 'three').to be(true)
  end

  it 'should return nil when number is not in the range' do
    expect(convert_digit(10) == nil).to be(true)
  end

end