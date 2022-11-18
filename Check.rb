module Check
    def is_right_guess(computer_code, user_guess)
        computer_clone = computer_code.clone
        user_clone = user_guess.clone
    
        hint = Array.new
        
        #Hint only on right numbers on the right position 
        computer_clone.each_with_index do |elem, index|
            if computer_clone.include?(user_clone[index]) && elem == user_clone[index] 
                hint.push("#{"\u2713".encode('utf-8')}")
                computer_clone[index] = nil
                user_clone[index] = nil
            end
        end
    
        computer_clone.delete_if { |elem| elem.nil? }
        user_clone.delete_if { |elem| elem.nil? }
    
        #print "Hint: #{hint}\n"
        #puts
        #print "Computer clone after 'done': #{computer_clone}\n"
        #print "User clone after 'done': #{user_clone}\n"
    
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
    
        #print "Computer clone after 'star': #{computer_clone}\n"
        #print "User clone after 'star': #{user_clone}\n"
    
        print "Hint: #{hint}\n"
        puts
    end
end

#comp = [1,1,3,4]
#user = [2,3,1,1]
#mistaken = comp - user #=> [4]
#matched = comp - mistaken #=> [1,1,3]