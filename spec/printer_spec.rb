require_relative "../app/printer.rb"

describe Printer do
  subject { Printer.new([[1, "bb", "ccc"], ["bb", "a", "ccc"]])}

  describe ".new" do
    its(:array) { should == [["1", "bb", "ccc"], ["bb", "a", "ccc"]] }
  end

  describe ".cols_lengths" do
    it "should be maximum value for each row column" do
      subject.cols_lengths.should == [2,2,3]
    end
  end

  describe "#print" do
    it "should print the table" do
      subject.print.should == "
| 1  | bb | ccc |
| bb | a  | ccc |
"
    end
  end
end
