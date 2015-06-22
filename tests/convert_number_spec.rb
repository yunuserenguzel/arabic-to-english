require './tests/rspec_helper'

describe 'convert_number' do

  it 'should convert digits with convert_digit' do
    expect(self).to receive(:convert_digit).with(9)
    convert_number 9
  end

  it 'should convert tens with convert_tens' do
    expect(self).to receive(:convert_tens).with(13)
    convert_number 13
  end

  it 'should convert hundreds with convert_hundreds' do
    expect(self).to receive(:convert_hundreds).with(534)
    convert_number 534
  end

  it 'should convert thousands with convert_thousands' do
    expect(self).to receive(:convert_thousands).with(433563)
    convert_number 433563
  end

end