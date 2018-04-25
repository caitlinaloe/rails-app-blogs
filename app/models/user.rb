class User
  attr_accessor :name

  def initialize(name)
    @name = name
    local_var = 1
  end

  def greet
    return "Hello my name is #{@name}"
  end
end
