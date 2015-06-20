require './tests/rspec_helper'

describe 'convert_digit' do

  it 'should convert digits to text' do
    expect(convert_digit(3)).to eq('three')
  end

  it 'should return nil when number is not in the range' do
    expect(convert_digit(10)).to eq(nil)
  end

end