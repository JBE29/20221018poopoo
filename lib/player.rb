require 'pry'

class Player
    attr_accessor :name, :life_points
    @@all_players = []
    
    def initialize(name) #game start setting. Each user get 10 points.
        @name = name
        @life_points = 10
        @life_points = life_points
    end

    def show_state(name, life_points) #Showing player's life_points
        #@@all_players.each do |player|
        puts "#{name} a #{life_points} de vie"
        #end
    end

    def gets_damage()
    end

    def attacks()
    end
end

binding.pry