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



class HumanPlayer < Player
    attr_accessor :weapon_level
    def initialize(name)
        @weapon_level = 1
        @weapon_level = weapon_level
        @life_points = 100
        @life_points = life_points
    end

    def show_state
        if life_points > 0
            puts "#{name} a #{life_points} points de vie et une arme de niveau #{weapon_level}"
        else
            puts "#{name} est mort !"
        end
    end

    def compute_damage
        rand(1..6) * @weapon_level
    end

    def search_weapon
        rank = rand(1..6)
        puts "Tu as maintenant une arme de niveau #{rank} !"
        if rank > @weapon_level
            puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
            rank = @weapon_level
        else
            puts "Déso looser, elle n'est pas mieux que ton arme actuelle..." 
        end
    end

    def search_health_pack
        result = rand(1..6)
        if result == 1
            puts "Tu n'as rien trouvé... "
        elsif result == 2 || 3 || 4 || 5
            puts "Bravo, tu as trouvé un pack de 50 points de vie !"
            if @life_points + 50 > 100
                @life_points = 100
            else
                @life_points += 50
            end
        elsif result == 6
            puts "Waow, tu as trouvé un pack de 80 points de vie !"
            if @life_points + 80 > 100
                @life_points = 100
            else
                @life_points += 80
            end
        end

    end
end
#binding pry