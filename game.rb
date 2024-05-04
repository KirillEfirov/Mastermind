# frozen_string_literal: true

require_relative 'computer'
require_relative 'player'
require_relative 'hint'

class Game
  def self.play
    computer = Computer.instance
    computer.generate_code

    print "Code was generated\n" \
          "Let's start!\n\n"

    player = Player.new

    12.times do |step|
      print "##{step + 1}: Enter a code: "
      player.guess

      hint = Hint.create(computer.code, player.user_code)
      Hint.show(player.user_code, hint)

      if computer.is_solved?(hint)
        print "\nYou cracked the code\n\n"
        break
      end

      if step == 11 && !computer.is_solved?(hint)
        print "\nComputer code: "
        computer.display_code
        print "\nYou didnt't hack the code\n\n"
      end

      puts
    end
  end
end
