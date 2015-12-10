# Exercises Easy 1

# Question 1
true
"hello"
[1, 2, 3, "happy days"]
142

  # Answer 1
  # All are an object

# Question 2
module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

  # Answer 2
  class Car
    include Speed
    # rest of code
  end

  class Truck
    include Speed
    # rest of code
  end

  sentra = Car.new
  sentra.go_fast

  frontier = Truck.new
  frontier.go_fast

# Question 3
>> small_car = Car.new
>> small_car.go_fast
I am a Car and going super fast!

  # Answer 3
  # self refers to that instance of the Car.  Calling the #class method on it gives us the object's class name.

# Question 4
class AngryCat
  def hiss
    puts "Hisssss!!!"
  end
end

  # Answer 4
  peppers = AngryCat.new

# Question 5
class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

  # Answer 5
  # The Pizza class contains an example of an instance variable. You can tell from the "@" symbol in front 
  # of the variable name.

# Question 6
class Cube
  def initialize(volume)
    @volume = volume
  end
end

  # Answer 6
  # Add an attr_reader

# Question 7

  # Answer 7
  # It prints the encoding of the object id.

# Question 8
class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end

  # Answer 8
  # self refers to that instance of the Cat class that called the Cat#age method.

# Question 9
class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

  # Answer 9
  # This is a class method and self refers to the Cat class.

# Question 10
class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end

  # Answer 10
  brown_bag = Bag.new("brown", "paper")

  # Create a new Bag object with the two arguments from the Bag#initialize method.
  