# frozen_string_literal: true

require_relative 'color'
require_relative 'hint'

class Rules
  extend Color

  def self.display
    print "#{apply_color('RULES')}\n" \
          "Player is given 12 attempts to guess the code that computer generated at random\n" \
          "After every attempt player gets a hint: \n" \
          "#{Hint::RIGHT_NUMBER_AND_POSITION_CHARACHTER} - one of the numbers is in the correct position\n" \
          "#{Hint::RIGHT_NUMBER_WRONG_POSITION_CHARACHTER} - there's the right number but on the wrong position"
  end
end
