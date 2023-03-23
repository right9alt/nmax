require "nmax/version"
require "nmax/numbers_storage"
require "nmax/numbers_processing"


module Nmax
    def self.call
      Nmax::NumbersProcessing.new(stream: STDIN.gets).run
    end
end