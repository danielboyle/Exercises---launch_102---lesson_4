# Exercies Easy 3

# Question 1
class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

  # Answer 1
  hello = Hello.new
  hello.hi

  # puts "Hello"

  hello = Hello.new
  hello.bye

  # method error

  hello = Hello.new
  hello.greet

  # argument error

  hello = Hello.new
  hello.greet("Goodbye")

  # puts "Goodbye"

  Hello.hi

  # class method error

# Question 2
Hello.hi call on previous question, how to fix it

  # Answer 2
  # Could make #hi a class method by self.hi in the Hello class and instantiating a Greeting object. 
  # Or could make and instance of Hello like
  hello = Hello.new
  hello.hi

# Question 3
class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name 
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

  # Answer 3
  peppers = AngryCat.new(37, "Peppers")
  mr_fluff_bottom = AngryCat.new(3, "Mr. Fluff Bottom")

# Question 4
class Cat
  def initialize(type)
    @type = type
  end
end

  # Answer 4
  def to_s
    puts "I'm a {@type} cat"
  end

# Question 5
class Television
  def self.manufacturer
    # method logic
  end 

  def model
    # method logic
  end
end

tv = Television.new
tv.manufacturer
tv.model

Television.manufacturer
Television.model

  # Answer 5
  # tv.manufacturer is a class method error while tv.model would execute the #model logic.
  # Television.manufacturer would execute the #manufacturer class method logic while Television.model
  # would return an error because #model is an instance method.

# Question 6
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

  # Answer 6
  # replace self.age with the @age instance variable

# Question 7
class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color 
  end

  def self.information
    return "I want to turn on the light with a brightness level of super high and a colour of green"
  end

end

  # Answer 7
  # return is extraneous
