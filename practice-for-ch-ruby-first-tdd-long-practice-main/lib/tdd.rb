class Array
    def my_uniq
        res_arr = []
        self.each {|ele| res_arr << ele unless res_arr.include?(ele)}
        res_arr
    end

    def two_sum
        res_arr = []
        (0...self.length).each{|first|
            (first+1...self.length).each{|sec|
                res_arr << [first,sec] if self[first] + self[sec] == 0
            }
        }
        res_arr
    end

    def my_transpose
        return [] if self.empty?
        raise "not a square matrix" if self.length != self[0].length
        res_arr = Array.new(self.length) {Array.new(self.length)}
        (0...self.length).each do |i|
            (0...self.length).each do |j|
                res_arr[i][j] = self[j][i]
            end
        end
        res_arr
    end

    def stock_picker
        return nil if self.empty?
        raise "Stock price should be above zero" if self.any?{|ele| ele <= 0}
        max_profit_idxs = []
        max_profit = 0
        (0...self.length).each{|first|
            (first+1...self.length).each{|sec|
                current_profit  = self[sec] - self[first]
                if current_profit > max_profit
                    max_profit_idxs = [first, sec]
                    max_profit=current_profit
                end
            }
        }
        return max_profit_idxs
    end
end