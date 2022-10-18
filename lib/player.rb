require 'pry'

class Player
    attr_accessor :name, :life_points
    @@all_players = []
    
    def initialize(name) #game start setting. Each user get 10 points.
        @name = name
        @life_points = 10
        @life_points = life_points
    end

    def show_state  #Showing player's life_points
        if life_points > 0
            puts "#{name} a #{life_points} points de vie"
        else
            puts "#{name} est mort !"
        end
    end

    def gets_damage(damage)
        @life_points = @life_points - damage
        if @life_points <= 0
            puts "Le joueur #{name} a été tué !"
        end
    end

    def attacks(name)
        puts "Le joueur #{self.name} attaque le joueur #{name.name}."
        damage = compute_damage
        puts "Il lui inflige #{damage} points de dommages."
        puts name.gets_damage(damage)
    end

    def compute_damage
        return rand(1..6)
    end
end

#bending pry