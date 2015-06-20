require './tests/rspec_helper'

describe 'convert_tens' do

  it 'should convert 11 to eleven' do
    expect(convert_tens(11) == 'eleven').to be(true)
  end

  it 'should convert 21 to twenty one' do
    expect(convert_tens(21) == 'twenty one').to be(true)
  end

  it 'should convert 30 to thirty' do
    expect(convert_tens(30) == 'thirty').to be(true)
  end

  it 'should return nil for 9' do
    expect(convert_tens(9) == nil).to be(true)
  end

  it 'should use convert digit for least significant digits' do
    allow(self).to receive(:convert_digit).and_return('HELLO')
    expect(convert_tens(32) == 'thirty HELLO').to eq(true)
  end

end