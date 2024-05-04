# frozen_string_literal: true

require_relative 'color'

class Hint
  RIGHT_NUMBER_AND_POSITION_CHARACHTER = "\u2713".encode('utf-8')
  RIGHT_NUMBER_WRONG_POSITION_CHARACHTER = "\u2721".encode('utf-8')

  extend Color

  def self.create(computer_code, user_guess)
    computer_clone = computer_code.clone
    user_clone = user_guess.clone

    hint = []

    computer_clone.each_with_index do |elem, index|
      next unless computer_clone.include?(user_clone[index]) && elem == user_clone[index]

      hint.push(RIGHT_NUMBER_AND_POSITION_CHARACHTER)
      computer_clone[index] = nil
      user_clone[index] = nil
    end

    computer_clone.delete_if { |elem| elem.nil? }
    user_clone.delete_if { |elem| elem.nil? }

    computer_clone.each_with_index do |elem, index|
      user_clone.each_with_index do |elem2, index2|
        next unless elem == elem2 && !elem.nil? && !elem2.nil?

        hint.push(RIGHT_NUMBER_WRONG_POSITION_CHARACHTER)
        computer_clone[index] = nil
        user_clone[index2] = nil
        break
      end
    end

    hint
  end

  def self.show(user_code, hints)
    user_code.each { |elem| print "#{apply_color(elem.to_s)} " }
    print ' '

    hints.each { |hint| print "#{hint} " }
  end
end
