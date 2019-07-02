class Warrior < Hero
    attr_accessor :hp,:status,:auto_action,:current_xp,:level_up
    attr_reader :name,:level
    def initialize name
        super name
            @hp = 100
            @attack = 8
    end
    def attack target
        val = ["slice", true, 0]
        if rand(1..100) > 30 
            val[2] = rand(10..20)
        else 
            val[1] = false
        end
        target.hp -= val[2]
        val
    end

end


