def call_block

  puts "Start"
  puts yield
  puts yield
  puts "End"

end

call_block {"HI"}

#---

def call_block2

  yield(1)
  yield(2)
  yield(3)

end

call_block2 do |i| 
  puts "#{i} block2"
end

#---

class MyNum

  attr_accessor :num

  def initialize(num)
    @num = num;
  end

  def myEach
    num.times do |i|
      yield(i,i*2)
    end
  end

end

number = MyNum.new(5)
number.myEach do |num1,num2|
  puts "#{num1}, #{num2} great!"
end

#---

def call_block3(&block)
  block.call(1)
  block.call(2)
  block.call(3)
end

call_block3 { |i| puts "#{i}: Block" }

#---

proc_1 = Proc.new { |i| puts "#{i}: Proc1"}
proc_2 = lambda { |i| puts "#{i}: Proc2"}

call_block3(&proc_1)
call_block3(&proc_1)








