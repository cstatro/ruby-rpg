class Battle
    attr_reader :hero,:monster,:victor, :status
    @@all = []
    def initialize hero, monster
        @hero, @monster = hero, monster
        @status = "pending"
        Battle.all << self
    end
    def auto_battle
        fighter = [hero,monster]
        while hero.hp > 0 && monster.hp > 0
            fighter.first.take_turn(fighter.first.attack(fighter.last),fighter.last)
            fighter.reverse!
        end
        fighter.first.status = "dead"
        @victor = fighter.last
        @status = "finished"

    end
    def self.all
        @@all
    end
end