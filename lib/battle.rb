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
        finish_battle
        @status = "finished"
    end
    def process_gains
        if (monster.xp+ hero.current_xp) >= hero.level_up
            level_points = (hero.level_up) - hero.current_xp
            hero.current_xp = monster.xp-level_points
            hero.level_up = hero.level_up*1.5
            hero.level += 1
        else
            hero.current_xp += monster.xp
        end
    end

    def self.all
        @@all
    end
    private
    def finish_battle
        standard_load
        process_gains unless self.victor.class.superclass == Monster
    end
    def process_gains
        if (monster.xp+ hero.current_xp) >= hero.level_up
            level_points = (hero.level_up) - hero.current_xp
            hero.current_xp = monster.xp-level_points
            hero.level_up = hero.level_up*1.5
            hero.level += 1
        else
            hero.current_xp += monster.xp
        end
    end
end