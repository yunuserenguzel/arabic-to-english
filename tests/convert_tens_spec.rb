require './tests/rspec_helper'

describe 'convert_tens' do

  it 'should convert 11 to eleven' do
    expect(convert_tens(11)).to eq('eleven')
  end

  it 'should convert 21 to twenty one' do
    expect(convert_tens(21)).to eq('twenty one')
  end

  it 'should convert 30 to thirty' do
    expect(convert_tens(30)).to eq('thirty')
  end

  it 'should return nil for 9' do
    expect(convert_tens(9)).to eq(nil)
  end

  it 'should return nil for 132' do
    expect(convert_tens(132)).to eq(nil)
  end

  it 'should use convert digit for least significant digits' do
    allow(self).to receive(:convert_digit).and_return('HELLO')
    expect(convert_tens(32)).to eq('thirty HELLO')
  end

end