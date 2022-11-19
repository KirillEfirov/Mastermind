require_relative 'Color.rb'
require_relative 'Hint.rb'

class Computer
    include Color
    include Hint

    @@code = Array.new

    def generate_code
        4.times { @@code.push(rand(1..6)) }
    end

    def get_code
        @@code
    end

    def display_code
        @@code.each do |elem|
            print "#{apply_color(elem.to_s)} "
        end
        puts
    end

    def show_hint(user_code, hints)
        user_code.each { |elem| print "#{apply_color(elem.to_s)} " }
        print " "

        hints.each { |hint| print "#{hint} " }
        puts
    end

    def delete_code
        @@code.clear
    end
    
end

#code = Computer.new
#code.generate_code
#code.display_code