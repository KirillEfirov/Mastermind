# frozen_string_literal: true

module Color
  def apply_color(mytext)
    case mytext
    when '1' then "\e[41m  #{mytext}  \e[0m"
    when '2' then "\e[42m  #{mytext}  \e[0m"
    when '3' then "\e[43m  #{mytext}  \e[0m"
    when '4' then "\e[44m  #{mytext}  \e[0m"
    when '5' then "\e[45m  #{mytext}  \e[0m"
    when '6' then "\e[46m  #{mytext}  \e[0m"
    else
      "\e[46m  #{mytext}  \e[0m"
    end
  end
end
