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

    describe "#two_sum" do
        before(:each) {
            @arr = [-1, 0, 2, -2, 1]
        }
        context "With no pairs" do
            it "should handle an empty array" do
                expect([].two_sum).to eq([])
            end

            it "should handle no pairs" do
                expect([1,2,3].two_sum).to eq([])
            end
        end

        context "With pairs" do
            it "should return correct number of pairs" do
                expect(@arr.two_sum.length).to eq(2)
            end
            it "should order smaller index first" do
                expect(@arr.two_sum).to eq([[0, 4], [2, 3]])
            end
            
            it "should not consider an element twice" do
                expect(@arr.two_sum).not_to include([0,0])
            end

            it "should not include duplicate pairs" do
                two_sum_res = @arr.two_sum
                expect(two_sum_res[0]).not_to eq(two_sum_res[1])
            end
        end
    end

    describe "#my_transpose" do
        before(:each) {@arr = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]}
        it "should handle an empty array" do
            expect([].my_transpose).to eq([])
        end

        it "should raise exception when row is not equal to column" do
            expect { [[1, 2, 3], [4, 5]].my_transpose }.to raise_error("not a square matrix")
        end

        it "should return the transposed array" do
            expect(@arr.my_transpose).to eq([[0, 3, 6],[1, 4, 7], [2, 5, 8]])
        end

        it "should not call the default transpose method" do
            expect(@arr).not_to receive(:transpose)
            @arr.my_transpose
        end
    end
end