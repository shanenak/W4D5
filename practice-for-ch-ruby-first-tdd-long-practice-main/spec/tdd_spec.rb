require 'tdd'
describe Array do 
    describe "#my_uniq" do
        # let(:arr) { Array.new() }
        before(:each) {@arr = Array.new}
        context "With the array empty" do
            it "should return the empty array" do
                expect(@arr.my_uniq).to eq(@arr)
            end
        end
        context "With a single element" do
            it "should return the array" do
                @arr << 1
                expect(@arr.my_uniq).to eq(@arr)
            end
        end
        context "With no duplicates" do
            it "should not remove any elements" do
                @arr += [1, 2, 3]
                expect(@arr.my_uniq).to eq(@arr)
            end
        end
        context "With duplicates" do
            it "should remove all duplicates" do
                @arr += [1, 2, 1, 3, 3]
                expect(@arr.my_uniq).to eq([1, 2, 3])
            end
            it "should not mutate the original array" do
                @arr += [1, 2, 1, 3, 3]
                original = @arr.dup
                @arr.my_uniq
                expect(original).to eq(@arr)
            end
            it "should not receive the built-in uniq method" do
                expect(@arr).not_to receive(:uniq)
                @arr.my_uniq
            end
        end
    end
end