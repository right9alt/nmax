require 'spec_helper'

RSpec.describe Nmax do
  let(:expected_output) { "111111111\n943575\n93143\n" }
  
  it 'should return 3 max element from test_large.txt' do
    expect(`cat test_large.txt | nmax 3`).to eq(expected_output)
  end
end