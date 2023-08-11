require 'hanoi'

describe TowersOfHanoi do
    describe "#initialize" do
        it "should initialize 3 different arrays of the same length" do
            
        end
        it "should have pre-filled numbers in the first array"
        it "should not allow any values other than the defined numbers"
        it "should have the other two as empty arrays"
    end

    describe "#move" do
        it "should ask for the array to pick from and drop to"
        it "should pick the top of the pile from array one and drop to array two"
        it "should not change the other array"
    end

    describe "#won" do
        it "should check the order of the discs on the final array"
        it "should print out a message when player wins"
    end
end