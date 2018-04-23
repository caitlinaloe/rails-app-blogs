def string_contains(my_string, word)
  # Check whether or noy word is included in the string.

  # Example: string = 'Hello World' word = 'hello'. The result should be true
  # Example string = 'Nice to meet you' word = 'hello'. The result should be false
  my_string = my_string.downcase
  word = word.downcase
  my_string.include?(word) == true
end
