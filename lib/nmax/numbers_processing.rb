module Nmax
  class NumbersProcessing
    def initialize(stream)
      @stream = stream.to_s
      @storage = NumbersStorage.new
    end

    def run 
      fill_data
      print_data
    end

    private
    def fill_data
      number = ''
      @stream.each_char do |symbol|
        if /\d/.match?(symbol)
          number += symbol
        else
          next if number.empty?
          @storage.push(number.to_i)
          number = ''
        end
      end
    end

    def print_data
      @storage.sort.each { |value| p value}
    end
  end
end