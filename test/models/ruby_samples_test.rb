require 'test_helper'

Dir["./app/models/ruby_samples/*.rb"].each { |file| require file }

class RubySamplesTest < ActiveSupport::TestCase
  test 'add_numbers' do
    puts 'add_numbers(first, second)'

    puts '1 + 2 = 3'
    assert_equal 3, add_numbers(1, 2)

    puts '"not a number" + 4 = 4'
    assert_equal add_numbers('not a number', 4), 4
  end

  test 'array_delete' do
    puts 'array_delete(arr, delete_value)'

    puts 'array [1, 2, 3] delete position 1 = [1, 3]'
    assert_equal [1, 3], array_delete([1, 2, 3], 1)

    puts 'array [1, 2, 3] delete position 6 = [1, 2, 3]'
    assert_equal [1, 2, 3], array_delete([1, 2, 3], 6)
  end

  test 'capital_hash' do
    puts 'find_capital(country)'

    puts 'country = "USA". Answer is "Washington, DC"'
    assert_equal 'Washington, DC', find_capital('USA')

    puts 'country = "Nothing". Answer is nil'
    assert_nil find_capital('Nothing')
  end

  test 'count_lines' do
    puts 'count_lines(paragraph)'

    a = "This paragraph \n has two lines"
    puts a
    assert_equal 2, count_lines(a)

    b = "This paragraph \n has \n three lines"
    puts b
    assert_equal 3, count_lines(b)
  end

  test 'grading' do
    puts 'grading(num)'

    puts '59 = F'
    assert_equal 'F', grading(59)

    puts '61 = D'
    assert_equal 'D', grading(61)

    puts '79 = C'
    assert_equal 'C', grading(79)

    puts '80 = B'
    assert_equal 'B', grading(80)

    puts '95 = A'
    assert_equal 'A', grading(95)

    puts '150 = Wrong Score'
    assert_equal 'Wrong score', grading(150)

    puts '-5 = Wrong Score'
    assert_equal 'Wrong score', grading(-5)
  end

  test 'loop' do
    puts 'looping(num)'

    puts 'num = 1. Answer is [1]'
    assert_equal [1], looping(1)

    puts 'num = -5. Answer is []'
    assert_equal [], looping(-5)

    puts 'num = 5. Answer is [1, 2, 3, 4, 5]'
    assert_equal [1, 2, 3, 4, 5], looping(5)
  end

  test 'percent' do
    puts 'percent(num1, num2)'

    puts '5 / 10 = 0.5'
    assert_equal 0.5, percent(5, 10)

    puts '30 / 3 = 10.0'
    assert_equal 10.0, percent(30, 3)
  end

  test 'string_contains' do
    puts 'string_contains(my_string, word)'

    puts 'string = "this is a sentence" word = "A"'
    assert string_contains("this is a sentence", "A")

    puts 'string = "Another sentence. word = another"'
    assert string_contains("Another sentence", "another")

    puts 'string = "Hello World" word = "no"'
    assert_not string_contains("Hello World", "no")
  end
end
