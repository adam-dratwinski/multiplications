require "#{Dir.pwd}/prime_number.rb"

describe PrimeNumber do
  describe ".prime?" do
    context "when number is prime" do
      it "should return true for 2" do
        PrimeNumber.prime?(2).should  == true
      end

      it "should return true for 3" do
        PrimeNumber.prime?(3).should  == true
      end

      it "should return true for 5" do
        PrimeNumber.prime?(5).should  == true
      end

      it "should return true for 7" do
        PrimeNumber.prime?(7).should  == true
      end

      it "should return true for 11" do
        PrimeNumber.prime?(11).should == true
      end
    end

    context "when number is not prime" do
      it "should return false for 1" do
        PrimeNumber.prime?(1).should == false
      end

      it "should return false for 4" do
        PrimeNumber.prime?(4).should == false
      end

      it "should return false for 6" do
        PrimeNumber.prime?(6).should == false
      end

      it "should return false for 8" do
        PrimeNumber.prime?(8).should == false
      end

      it "should return false for 9" do
        PrimeNumber.prime?(9).should == false
      end
    end
  end

  describe ".generate" do
    it "should return 5 first numbers" do
      PrimeNumber.generate(5).should == [2,3,5,7,11]
    end
  end
end
