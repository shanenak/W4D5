require 'hanoi'

describe TowersOfHanoi do
    let(:h) {
        TowersOfHanoi.new(5)
    }

    describe "#initialize" do
        let(:stacks) {
            h.stack_a+h.stack_b+h.stack_c
        }
        it "should initialize 3 different arrays" do
            expect(stacks.length).to eq(h.n)
        end
        it "should have pre-filled numbers in the first array" do
            expect(stacks.all?{|ele| ele.is_a?(Integer)}).to be(true)
        end
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