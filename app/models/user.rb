class User < ApplicationRecord
  def greet
    return "Hello, my name is #{name}."
  end
end
