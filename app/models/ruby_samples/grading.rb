def grading(num)
  # return the correct letter grade base on num (num is a number)
  # 0 - 59 is F
  # 60 - 69 is D
  # 70 - 79 is C
  # 80 - 89 is B
  # 90 - 100 is A
  # Any other number is 'Wrong score'
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
