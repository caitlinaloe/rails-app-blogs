class Blog < ApplicationRecord
  validates :title, presence: true



  def grading(num)
      if num < 0 || num > 100
        'Wrong score'
      elsif num <= 59
        'F'
      elsif num <= 69
        'D'
      elsif num <= 79
        'C'
      elsif num <= 89
        'B'
      elsif num <= 100
        'A'
      end
  end
end
