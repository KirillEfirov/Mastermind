# frozen_string_literal: true

require_relative 'color'

require 'singleton'

class Computer
  include Singleton
  include Color

  attr_accessor :code

  def generate_code
    @code = Array.new(4) { rand(1..6) }
  end

  def display_code
    @code.each { |elem| print "#{apply_color(elem.to_s)} " }
  end

  def is_solved?(hints)
    right = 0

    hints.each { |hint| right += 1 if hint == Hint::RIGHT_NUMBER_AND_POSITION_CHARACHTER }

    right == 4
  end
end
