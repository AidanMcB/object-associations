class Animal

    @@all = []

    def initialize(options)
        # ?
        @@all.push(self)
    end

    def self.all()
        return @@all
    end

    # ?

end

class Zoo 

    attr_accessor(:name)

    def initialize(options)
        self.name = options[:name]
    end

    # ?

end

houston_zoo = Zoo.new({ name: 'Houston Zoo' })

tiger = Animal.new({ zoo: houston_zoo })

monkey = Animal.new({ zoo: houston_zoo })

gorilla = Animal.new({ zoo: houston_zoo })


# Uncomment Each Line One by One and get it working. 
# It should return the value displayed

# 1) Give the animal class a zoo method:
# p gorilla.zoo # => #<Zoo:;lasjdflsajdl @name="Houston Zoo">

# 2) Give the zoo class an "animals" method:
# p houston_zoo.animals # => [ #<Animal:;lasjdflsajdl>, #<Animal:;lasjdflsajdl>, #<Animal:;lasjdflsajdl>] 