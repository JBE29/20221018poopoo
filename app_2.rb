require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/game'

puts "    -------------------------------------------------"
puts "    |Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts "    |Le but du jeu est d'être le dernier survivant !|"
puts "    -------------------------------------------------"
sleep(1)
puts ""
puts "Donne moi ton prénom :"
print "> "
human = gets.chomp
user = HumanPlayer.new(human)
puts ""
puts "Bonjour #{human} !"

player1 = Player.new("Josiane")
player2 = Player.new("José")
ennemies = [player1, player2]

#attack phase
puts ""
puts "Passons à la phase d'attaque :"
puts ""  
while user.life_points >0 && (player1.life_points > 0 || player2.life_points >0)
    puts user.show_state

    puts "Quelle action veux-tu effectuer ?"
    puts ""
    puts "a - chercher une meilleure arme"
    puts "s - chercher à se soigner" 
    puts ""
    puts "attaquer un joueur en vue :"
    puts "0 - Josiane a #{player1.life_points} points de vie"
    puts "1 - José a #{player2.life_points} points de vie"
    print ">"
    choice = gets.chomp
    if choice == "a0"
        user.search_weapon
        user.attacks(player1)
    elsif choice == "s0"
        user.search_health_pack
        user.attacks(player1)
    elsif choice == "a1"
        user.search_weapon
        user.attacks(player2)
    elsif choice == "s1"
        user.search_health_pack
        user.attacks(player2)
    end

    puts "Les autres joueurs t'attaquent !"
        player1.attacks(user)
        player2.attacks(user)
end
if user.life_points > 0
    puts "BRAVO ! TU AS GAGNE !"
else
    puts "Looser tu as perdu !"
end

