class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    return "Hello, my name is #{name}."
  end
  
end
