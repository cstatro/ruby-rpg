class Monster
    attr_reader :xp
    def initialize name
        @name = name
        @status = "alive"
    end
    def take_turn attack,target
        standard_load
        puts "#{name} has used #{attack[0]}"
        standard_load
        if attack[1] && target.hp > 0 
        puts "#{target.name} has taken #{attack[2]}pts of damage! Health is currently #{target.hp}!"  
        elsif attack[1] && target.hp <= 0 
            puts "#{target.name} is defeated..."
            target.status = "dead"
            puts "Game over..."
        else
            puts "...but misses! Health is currently #{target.hp}!"
        end   
    end
end