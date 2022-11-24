require_relative 'Rules.rb'
require_relative 'Game.rb'


Rules.new.print_rules

Game.new.play

while true
    print "Enter 'y' to play again or any other button to leave game: "
    choice = gets.chomp!

    case choice
    when "y"
        Game.new.play
    else
        break
    end
end