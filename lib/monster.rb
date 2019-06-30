class Monster
    def initialize name
        @name = name
    end
    def take_turn attack,target
        puts "#{name} has used #{attack[0]}"
        if attack[1] && target.hp > 0 
        puts "#{target.name} has taken #{attack[2]}pts of damage! Health is currently #{target.hp}!"  
        elsif attack[1] && target.hp <= 0 
            puts "#{target.name} is defeated..."
            puts "Game over..."
        else
            puts "...but misses! Health is currently #{target.hp}!"
        end   
    end
end