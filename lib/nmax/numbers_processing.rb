module Nmax
  class NumbersProcessing
    def initialize(stream)
      @stream = stream.to_s
      @storage = NumbersStorage.new
      @n = ARGV[0].to_i
    end

    def run 
      fill_data
      print_data
    end

    def fill_data
      @storage = @stream.scan(/\d{1,1000}/m).map(&:to_i)
                                            .sort
                                            .reverse
                                            .first(@n)
    end

    def print_data
      @storage.each { |value| p value}
    end
  end
end