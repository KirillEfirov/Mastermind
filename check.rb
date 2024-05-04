# frozen_string_literal: true

module Check
  def is_right_guess(computer_code, user_guess)
    computer_clone = computer_code.clone
    user_clone = user_guess.clone

    hint = []

    computer_clone.each_with_index do |elem, index|
      next unless computer_clone.include?(user_clone[index]) && elem == user_clone[index]

      hint.push(Hint::RIGHT_NUMBER_AND_POSITION_CHARACHTER)
      computer_clone[index] = nil
      user_clone[index] = nil
    end

    computer_clone.delete_if(&:nil?)
    user_clone.delete_if(&:nil?)

    computer_clone.each_with_index do |elem, index|
      user_clone.each_with_index do |elem2, index2|
        next unless elem == elem2 && !elem.nil? && !elem2.nil?

        hint.push("\u2721".encode('utf-8'))
        computer_clone[index] = nil
        user_clone[index2] = nil
        break
      end
    end

    print "Hint: #{hint}\n"
    puts
  end
end
