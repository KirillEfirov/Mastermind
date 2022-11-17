class Player
    attr_accessor :user_code

    def guess
        print "Enter a code: "
        @user_code = gets.chomp!
    end

end

#user = Player.new
#user.guess
#puts user.user_code