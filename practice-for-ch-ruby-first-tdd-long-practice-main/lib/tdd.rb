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
end