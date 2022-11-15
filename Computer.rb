require_relative 'Color.rb'

class Computer
    include Color

    @@code = Array.new

    def generate_code
        4.times { @@code.push(rand(1..6)) }
    end

    def get_code
        @@code
    end

    def display_code
        @@code.each do |elem|
            print apply_color(elem.to_s) + " "
        end
        puts
    end

    def show_clue
        
    end
end