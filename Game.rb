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

    12.times do |step|
      print "##{step + 1}: "
      player.guess

      hint = computer.create_hint(computer.get_code, player.user_code)
      computer.show_hint(player.user_code, hint)

      if computer.is_solved?(hint)
        print "You cracked the code\n\n"
        break
      end

      puts
    end

    computer.delete_code
  end
end