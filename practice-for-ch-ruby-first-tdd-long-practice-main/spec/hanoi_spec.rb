require 'hanoi'

describe TowersOfHanoi do
    before(:each) {@h = TowersOfHanoi.new(5)}

    describe "#initialize" do
        let(:stacks) {
            @h.stack_a+@h.stack_b+@h.stack_c
        }
        it "should initialize 3 different arrays" do
            expect(stacks.length).to eq(@h.n)
        end
        it "should have pre-filled numbers in the first array" do
            expect(stacks.all?{|ele| ele.is_a?(Integer)}).to be(true)
        end
        it "should have the other two as empty arrays" do
            expect(@h.stack_b).to eq([])
            expect(@h.stack_c).to eq([])
        end
    end

    describe "#move" do
        it "should accept two parameters" do
            expect{ @h.move }.to raise_error(ArgumentError)
            expect{ @h.move(0,1) }.not_to raise_error(ArgumentError)
        end
        it "should pick the top of the pile from array one and drop to array two" do
            disc_stack_a = @h.stack_a.last
            disc_stack_b = @h.stack_b.last
            @h.move(0,1)
            expect(@h.stack_a.last).not_to eq(disc_stack_a)
            expect(@h.stack_b.last).to eq(disc_stack_a)
            expect(@h.stack_b[-2]).to eq(disc_stack_b)
        end
        it "should not change the other array"
    end

    describe "#won" do
        it "should check the order of the discs on the final array"
        it "should print out a message when player wins"
    end
end