# frozen_string_literal: true

require_relative 'rules'
require_relative 'game'

Rules.display
Game.play

loop do
  print "Enter 'y' to play again or any other button to leave the game: "

  gets.chomp! == 'y' ? Game.play : break
end
