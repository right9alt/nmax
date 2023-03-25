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
    #Вариант когда можно находить все целые числа
    #и хранить их в массиве и поочередно пушить в основной
    #@storage, но если массив данных очень большой, то может
    #отнять много памяти и проход по каждому символу
    #может и будет чуть дольше, но скорее всего производительнее

    #def fill_data
    ## Используем регулярное выражение для поиска целых чисел
    #  integers_regex = /\b\d+\b/
      
    ## Ищем все целые числа в строке и добавляем их в массив
    #  @stream.scan(integers_regex).each do |match|
    #    @storage.push(match.to_i)
    #  end
    #end

    def fill_data
      #В условии говорится что необходимо выводить n
      #самых больших целых чисел, если встречаем число
      #15151515.9999999, то необходимо его пропустить, 
      #
      #Считаем число типа float если после целой части
      #стоит . и сразу же начинается дробная часть
      number = ''
      f_is_float = false 
      @stream.each_char.with_index do |symbol, index|
        flag_match = /\d/.match?(symbol)
        if f_is_float
          unless flag_match 
            f_is_float = false
          end
        else
          if flag_match
            number += symbol
          else
            if symbol == '.' && /\d/.match?(@stream[index + 1])
              f_is_float = true
              number = ''
            else
              next if number.empty?
              @storage.push(number.to_i)
              number = ''
            end
          end
        end
      end
    end

    def print_data
      @storage.sort.each { |value| p value}
    end
  end
end