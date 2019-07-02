class Slime < Monster
    attr_accessor :hp,:status
    attr_reader :name 
    def initialize name
        @hp = 30
        @xp = 150
        super name
    end

    def attack(target)
        val = ["tackle",true,0]
        if rand(1..100) > 20 
            val[2] = rand(10..20)
        else 
            val[1] = false
        end
        target.hp -= val[2]
        val
    end
    def secret
        file='./lib/art/slime.txt'
        f = File.open(file, "r")
        f.each_line { |line|
            sleep 0.05
            puts line
        }
        f.close
    end


end