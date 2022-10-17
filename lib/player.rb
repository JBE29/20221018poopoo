gem 'pry'

class Player
    attr_accessor :@name, :@life_points

    def initialize(name, life_points)
        @life_points=10
    end
end