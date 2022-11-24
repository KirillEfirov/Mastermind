module Color
    def apply_color(mytext)
        case mytext
        when "1"
            "\e[41m  #{mytext}  \e[0m"   
        when "2"
            "\e[42m  #{mytext}  \e[0m"
        when "3"
            "\e[43m  #{mytext}  \e[0m"
        when "4"
            "\e[44m  #{mytext}  \e[0m"
        when "5"
            "\e[45m  #{mytext}  \e[0m"
        when "6"
            "\e[46m  #{mytext}  \e[0m"
        when "RULES"
            "\e[46m  #{mytext}  \e[0m"
        end
    end
end