

RSpec.describe Nmax::NumbersStorage do
  context "when created" do
    it "has size 0" do
      expect(subject.size).to eq(0)
    end
  end

  describe "#push" do
    context "when storage is empty" do
      it "adds a new number to the storage" do
        subject.push(10)
        expect(subject.size).to eq(1)
      end
    end

    context "when storage has less than n numbers" do
      before do
        ARGV[0] = "3"
      end

      it "adds a new number to the storage" do
        subject.push(10)
        subject.push(20)
        expect(subject.size).to eq(2)
      end

      it "keeps the numbers sorted in descending order" do
        subject.push(10)
        subject.push(20)
        subject.push(15)
        expect(subject.sort).to eq([20, 15, 10])
      end
    end

    context "when storage has n numbers" do
      before do
        ARGV[0] = "3"
      end

      it "adds a new number to the storage if it's greater than the smallest number in the storage" do
        subject.push(10)
        subject.push(20)
        subject.push(15)
        subject.push(30)
        expect(subject.sort).to eq([30, 20, 15])
      end

      it "doesn't add a new number to the storage if it's smaller than the smallest number in the storage" do
        subject.push(10)
        subject.push(20)
        subject.push(15)
        subject.push(5)
        expect(subject.sort).to eq([20, 15, 10])
      end
    end
  end
end
