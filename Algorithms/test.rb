arr = [1,2,3].map do |e|
  next 42 if e == 2
  e
end

puts arr.inspect

def my_fun
  [1,2,3].map do |e|
    return 42 if e == 2
    e
  end
end

puts my_fun
