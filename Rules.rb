require_relative 'Color.rb'

class Rules
    include Color
    def print_rules
        puts "#{apply_color("RULES")}"
        puts "Player is given 12 attempts to guess the code that computer generated at random"
        puts "After every attempt player gets a hint: "
        puts "#{"\u2713".encode('utf-8')} - one of the numbers is in the correct position"
        puts "#{"\u2721".encode('utf-8')} - there's the right number but on the wrong position"
    end
end