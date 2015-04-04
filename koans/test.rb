class MyClass

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  class InnerClass
    def innerFunction
      puts "Inner!"
    end
  end

  def callInnerMethod
    inner = InnerClass.new
    inner.innerFunction

    inner2 = MyClass.const_get("InnerClass").new
    inner2.innerFunction
  end
end

mine = MyClass.new("HI")
puts mine.name

mine.callInnerMethod
puts Object.constants.size
