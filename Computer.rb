class Computer
    @@code = Array.new

    def generate_code
        4.times { @@code.push(rand(1..6)) }
    end

    def get_code
        @@code
    end
end