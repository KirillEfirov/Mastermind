require_relative 'Computer.rb'
require_relative 'Player.rb'

class Game
  def play
    hash = Hash.new

    computer = Computer.new
    computer.generate_code
    puts "Code was generated"
    computer.display_code

    puts "Let's start!"
    puts

    player = Player.new
    player.guess

    hint = computer.create_hint(computer.get_code, player.user_code)
    computer.show_hint(player.user_code, hint)
    computer.delete_code
  end
end