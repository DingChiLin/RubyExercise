require "./module"

class Person

  include MyUtil

  attr_accessor :name

  @@admin_name = "admin"

  def initialize(name)
    @name = name
  end

  def say(word)
    puts "#{@name} says #{word}"
    puts @@admin_name
  end

  def self.say
    puts @@admin_name
  end

end

class Man < Person

  attr_accessor :age

  def say(word)
    puts "I'm a Man at age #{age}"
    word << " put new word to you!"
  end

end

word = "init word"

man = Man.new("Arthur")
man.age = 10
man.say(word)

puts word

#Test Module
man.who_am_i?

