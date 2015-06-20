require './tests/rspec_helper'

describe 'convert_hundreds' do

  it 'should convert 100 to one hundred' do
    expect(convert_hundreds(100) == 'one hundred').to be(true)
  end

  it 'should convert 204 to two hundred four' do
    expect(convert_hundreds(204) == 'two hundred four').to be(true)
  end

  it 'should convert 453 to four hundred fifty three' do
    expect(convert_hundreds(453) == 'four hundred fifty three').to be(true)
  end

  it 'should return nil for 13' do
    expect(convert_hundreds(13)).to eq(nil)
  end

  it 'should return nil for 4345' do
    expect(convert_hundreds(4345)).to eq(nil)
  end

  it 'should use convert tens for last two digits' do
    allow(self).to receive(:convert_tens).and_return('HELLO')
    expect(convert_hundreds(911) == 'nine hundred HELLO').to eq(true)
  end

end