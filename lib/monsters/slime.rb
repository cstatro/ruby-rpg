class Slime < Monster
    attr_reader :name
    def initialize name
        super name
    end

    def tackle(target)
        val = ["tackle",true,0]
        if rand(1..100) > 20 
            val[2] = rand(10..20)
        else 
            val[1] = false
        end
        target.hp -= val[2]
        val
    end


end