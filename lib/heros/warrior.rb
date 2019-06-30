class Warrior < Hero
    attr_accessor :hp,:status
    attr_reader :name,:level
    def initialize name
        super name
            @hp = 100
            @attack = 8
    end


    def secret
        file='./lib/art/goblin.txt'
        f = File.open(file, "r")
        f.each_line { |line|
            puts line
        }
        f.close
    end
end


