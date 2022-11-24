module Hint
    def create_hint(computer_code, user_guess)
        computer_clone = computer_code.clone
        user_clone = user_guess.clone
    
        hint = Array.new
        
        #Add "done" as a hint
        computer_clone.each_with_index do |elem, index|
            if computer_clone.include?(user_clone[index]) && elem == user_clone[index] 
                hint.push("#{"\u2713".encode('utf-8')}")
                computer_clone[index] = nil
                user_clone[index] = nil
            end
        end
    
        computer_clone.delete_if { |elem| elem.nil? }
        user_clone.delete_if { |elem| elem.nil? }
    
        #Add star as a hint
        computer_clone.each_with_index do |elem, index|
            user_clone.each_with_index do |elem2, index2|
                if elem == elem2 && !elem.nil? && !elem2.nil?
                    hint.push("#{"\u2721".encode('utf-8')}")
                    computer_clone[index] = nil
                    user_clone[index2] = nil
                    break
                end
            end
        end
    
        hint
    end
end