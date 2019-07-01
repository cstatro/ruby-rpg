class Hero
    def initialize name
        @level = 1
        @status = 'good'
        @hp = 50  
        @name = name
        @attack = 5 
    end
    def take_turn attack,target
        standard_load
        puts "#{name} has used #{attack[0]}"
        standard_load
        if attack[1] && target.hp > 0 
        puts "#{target.name} has taken #{attack[2]}pts of damage!"  
        elsif attack[1] && target.hp <= 0 
            puts "#{target.name} is defeated..."
        else
            puts "...but misses! Health is currently #{self.hp}!"
        end   
    end
end