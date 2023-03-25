RSpec.describe Nmax::NumbersProcessing do
  let(:input_data) { "Lorem ipsum dolor sit 12345 amet, consectetur adipiscing 6789 elit. Nullam sit amet 123 amet nulla." }
  
  describe "#fill_data" do
    subject { described_class.new(input_data) }
    
    it "fills the storage with the n largest numbers from the input stream" do
      subject.send(:fill_data)
      expect(subject.instance_variable_get(:@storage).to_a).to match_array([12345, 6789, 123])
    end
  end
end