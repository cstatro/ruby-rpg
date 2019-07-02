## Ruby RPG

### Overview
I'm building a CLI app that can be used to simulate RPG battles. The schema looks like this and has the potential to add on subclasses underneath the two main models: `Hero` and `Monster`. The subclass objects will be able to battle each other in the join model `Battle`. 

<p align="center">
<img  src="https://github.com/cstatro/ruby-rpg/blob/master/model_schema.svg">
</p>

#### Hero Model
The `Hero` model is initialized with set of stats that can be overwritten in any potential subclass model. 

```
class Hero
    def initialize name 
        @level = 1
        @status = 'good'
        @hp = 50  
        @name = name
        @attack = 5 
        @current_xp = 0
        @level_up = 300
    end
```
In the example below we are inheriting from Hero into a new class named `Warrior`

```
class Warrior < Hero
    attr_accessor :hp,:status,:auto_action,:current_xp,:level_up
    attr_reader :name,:level
    def initialize name
        super name
            @hp = 100
            @attack = 8
    end
```
