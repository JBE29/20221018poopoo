require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/game'

puts "Bonjour et bienvenu dans le jeu du poo poo !"
puts ""


 #player definition
    puts "Présentation du joueur 1 :"
    print "> "
    player1 = Player.new("Josiane")
    sleep(0.2)
    puts "Bonjour Josiane !"
    sleep(0.2)
    puts "Présentation du joueur 2 :"
    print "> "
    player2 = Player.new("José")
    sleep(0.2)
    puts "Bonjour José !"
    sleep(0.2)
    puts "Voici l'état de chaque joueur."
    sleep(0.2)
    player1.show_state
    player2.show_state
  

#attack phase
    puts ""
    puts "Passons à la phase d'attaque :"
    puts ""  
    while player1.life_points >= 0 and player2.life_points >= 0
        if player1.life_points >= 0 or player2.life_points >=0
            sleep(0.5)
            puts player1.attacks(player2)
            sleep(0.5)
            puts ""
            if player1.life_points >0
                puts player2.show_state
                sleep(0.5)
                puts ""
                puts player2.attacks(player1)
                sleep(0.5)
                puts ""
                puts player1.show_state
            end
        end
    end




