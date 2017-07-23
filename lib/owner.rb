class Owner

 attr_accessor :pets, :name
 attr_reader :species

  @@all = []

def initialize (species)
  @species = species
  @@all << self
  @pets = {fishes: [], cats: [], dogs: []}
    end

    def self.all # all the owners that hae been created
      @@all
    end

      def self.reset_all  #Class methods can reset the owners that have been created
         @@all.clear
       end

        def self.count
    @@all.size
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish (name)
    new_fish = Fish.new(name)
    pets[:fishes] << new_fish
    end

    def buy_cat (name)
      new_cat = Cat.new(name)
      pets[:cats] << new_cat
    end

    def buy_dog (name)
      new_dog = Dog.new(name)
      pets[:dogs] << new_dog
    end

    def walk_dogs #when this method is initialized dogs mood changes to HAPPY
      pets[:dogs].map {|dog| dog.mood = "happy"}
    end

    def play_with_cats
      pets[:cats].map {|cat| cat.mood = "happy"}
    end

    def feed_fish
      pets[:fishes].map {|fish| fish.mood = "happy"}
    end

    def sell_pets
      pets.each do |type, pets|
        pets.map{|pet| pet.mood = "nervous"}

    end
    pets.clear
  end

  def list_pets

  fish_count = @pets[:fishes].count
  cat_count = @pets[:cats].count
  dog_count = @pets[:dogs].count
  "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
    end
  
end
