# frozen_string_literal: true

class Player
  attr_accessor :user_code

  def guess
    @user_code = gets.chomp!.split('').map(&:to_i)
  end
end
