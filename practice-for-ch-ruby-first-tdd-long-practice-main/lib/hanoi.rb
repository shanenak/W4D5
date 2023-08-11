class TowersOfHanoi
    
    attr_reader :stack_a, :stack_b, :stack_c, :number_of_discs
    def initialize(number_of_discs)
        @stack_a = (0...number_of_discs).to_a
        @stack_b = Array.new()
        @stack_c = Array.new()
        @number_of_discs = number_of_discs
        @stack_map = {0 => @stack_a, 1 => @stack_b, 2 => @stack_c}
    end
    def move(starting_stack, ending_stack)
        raise 'invalid starting stack' if @stack_map[starting_stack].empty?
        @stack_map[ending_stack] << @stack_map[starting_stack].pop
    end
    def won?(stack)
        @stack_map[stack] == (0...number_of_discs).to_a && @stack_map[stack] != stack_a
    end
end