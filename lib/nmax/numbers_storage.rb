module Nmax
  class NumbersStorage
    #может нужно будет сменить тип данных или дополнить функционал.
    #сейчас - излишне, в будущем может понадобится
      def initialize
        @storage = []
        @n = ARGV[0].to_i if ARGV[0]
      end

      def size
        @storage.size
      end

      def index
        @storage.index
      end

      def push(item)
        if @storage.size < @n || @n == 0
          @storage << item
        else
          min_elem = @storage.min
          if min_elem < item
            min_index = @storage.index(min_elem)
            @storage[min_index] = item
          end
        end
      end
      
      def to_a
        @storage.to_a
      end

      def each(&block)
        @storage.each(&block)
      end

      def sort
        @storage.sort.reverse
      end
  end
end