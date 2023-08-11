class Array
    def my_uniq
        res_arr = []
        self.each {|ele| res_arr << ele unless res_arr.include?(ele)}
        res_arr
    end
end