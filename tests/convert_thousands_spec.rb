require './tests/rspec_helper'

describe 'convert_thousands' do

  it 'should should convert 1000 to one thousand' do
    expect(convert_thousands(1000)).to eq('one thousand')
  end
end