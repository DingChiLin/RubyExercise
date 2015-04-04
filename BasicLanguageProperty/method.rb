def say_hello(name = "unKnown")
  "Hi, " + name
end

puts say_hello("Arthur")
puts say_hello()
puts say_hello


puts "---"

array = [2,1,3]
puts array.empty?
puts array.sort.inspect
puts array.inspect

puts "---"

puts array.sort!.inspect
puts array.inspect


def change_string(str)
  str << " I can insult you all you want"
  str << " because you'll never see this"
  str << " because I'm going to replace the whole string!"
  str << " Haha you smell bad!"
  str = "What? I didn't say anything." # I'm so sneaky
end

be_nice_to_me = "hello"
change_string(be_nice_to_me)
puts be_nice_to_me
