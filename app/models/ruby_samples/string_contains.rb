def string_contains(my_string, word)
  my_string.downcase.include? word.downcase
  # Check whether or noy word is included in the string.

  # Example: string = 'Hello World' word = 'hello'. The result should be true
  # Example string = 'Nice to meet you' word = 'hello'. The result should be false
end
