class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone, numericality: { less_than_or_equal_to: 999999999 }


  def greet
    return "Hello, my name is #{name}."
  end
end
