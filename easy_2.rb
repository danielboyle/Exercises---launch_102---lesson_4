# Exercises Easy 2

# Question 1
class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

oracle = Oracle.new
oracle.predict_the_future

  # Answer 1
  # It will return "You will #{choices.sample}"

# Question 2
class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
trip.predict_the_future

  # Answer 2
  # The result will be like Question 1 exept the choices will be from the RoadTrip class

# Question 3
module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

  # Answer 3
  # Orange class lookup chain: Orange, Taste, Object, Kernel, BasicObject
  # HotSauce class lookup chain: HotSauce, Taste, Object, Kernel, BasicObject

# Question 4
class BeesWax
  def initialize(type)
    @type = type
  end

  def type
    @type
  end

  def type=(t)
    @type = t
  end

  def describe_type
    puts "I am a #{@type} of Bees Wax"
  end
end

  # Answer 4
  # Add an attr_accessor for :type

# Question 5
excited_dog = "excited dog"
@excited_dog = "excited dog"
@@excited_dog = "excited dog"

  # Answer 5
  # local variable, instance variable, class variable - can tell from the @ symbols or lack of

# Question 6
class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

  # Answer 6
  # self.manufacturer is a class method because of the self. in the method name. It is called
  # by Television.manufacturer

# Question 7
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

  # Answer 7
  # @@cats_count is a global variable that keeps track of how many objects have been instantiated from
  # the Cat class.

# Question 8
class Game
  def play
    "Start the game!"
  end
end

class Bingo
  def rules_of_play
    #rules of play
  end
end

  # Answer 8
  class Bingo < Game
    # class content
  end

# Question 9
class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end

  # Answer 9
  # if you call Bingo#play on a Bingo object, then the #play method from the Bingo class would override
  # the Game#play method

# Question 10

  # Answer 10
  # Objects are easier to conceptualize for the programmer, easier to organize code, growing complexity
  # is easier managed, easier to add functionality on top of program without breaking it, easier to reuse
  # code from previous programs
