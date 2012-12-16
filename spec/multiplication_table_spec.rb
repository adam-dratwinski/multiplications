require_relative "../app/multiplication_table.rb"

describe MultiplicationTable do
  let(:rows) { [1,2,3] }
  let(:cols) { [2,3] }

  subject { MultiplicationTable.new(rows, cols) }

  describe ".new" do
    its(:rows) { should == [1,2,3] }
    its(:cols) { should == [2,3] }
  end

  describe "#get_row" do
    it "should return values for the first row" do
      subject.get_row(0).should == [2,4,6]
    end
  end

  describe "#get_all" do
    it "should return values for all rows" do
      subject.get_all.should == [["x",1,2,3], [2,2,4,6], [3,3,6,9]]
    end
  end
end
