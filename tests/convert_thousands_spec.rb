require './tests/rspec_helper'

describe 'convert_thousands' do

  it 'should convert 1000 to one thousand' do
    expect(convert_thousands(1000)).to eq('one thousand')
  end

  it 'should convert 4001 to four thousand one' do
    expect(convert_thousands(4001)).to eq('four thousand one')
  end

  it 'should convert 25023 to twenty five thousand twenty three' do
    expect(convert_thousands(25023)).to eq('twenty five thousand twenty three')
  end

  it 'should convert 107376 to seven thousand three hundred seventy six' do
    expect(convert_thousands(107376)).to eq('one hundred seven thousand three hundred seventy six')
  end
  it 'should return nil for 134' do
    expect(convert_thousands(134)).to eq(nil)
  end
end