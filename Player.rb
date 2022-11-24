class Player
    attr_accessor :user_code

    def guess
        print "Enter a code: "
        @user_code = gets.chomp!.split("").map { |elem| elem.to_i }
    end
end