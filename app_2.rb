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
player3 = HumanPlayer.new(human)
puts ""
puts "Bonjour #{human} !"

player1 = Player.new("Josiane")
player2 = Player.new("José")
ennemies = [player1, player2]

#attack phase
puts ""
puts "Passons à la phase d'attaque :"
puts ""  
while player3.life_points >= 0
    puts player1.attacks(player3)
    sleep(0.3)
    puts ""
    puts player3.show_state
    puts player3.attacks(player1)
    sleep(0.3)
    puts ""
    puts player1.show_state
    puts player2.attacks(player3)
    sleep(0.3)
    puts ""
    puts player3.show_state
    puts player3.attacks(player2)
    sleep(0.3)
    puts ""
    puts player2.show_state
end


