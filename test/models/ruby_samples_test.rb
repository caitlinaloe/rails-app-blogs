require 'test_helper'

Dir["./app/models/ruby_samples/*.rb"].each { |file| require file }

class RubySamplesTest < ActiveSupport::TestCase
  test 'add_numbers' do
    puts '1 + 2 = 3'
    # assert_equal 3, add_numbers(1, 2)

    puts '"not a number" + 4 = 4'
    # assert_equal add_numbers('not a number', 4), 4
  end

  test 'array_delete' do
    puts 'array [1, 2, 3] delete position 1 = [1, 3]'
    # assert_equal [1, 3], array_delete([1, 2, 3], 1)

    puts 'array [1, 2, 3] delete position 6 = [1, 2, 3]'
    # assert_equal [1, 2, 3], array_delete([1, 2, 3], 6)
  end

  test 'capital_hash' do
    puts 'country = "USA". Answer is "Washington, DC"'
    # assert_equal 'Washington, DC', find_capital('USA')

    puts 'country = "Nothing". Answer is nil'
    # assert_nil find_capital('Nothing')
  end

  test 'count_lines' do
    a = "This paragraph \n has two lines"
    puts a
    # assert_equal 2, count_lines(a)

    b = "This paragraph \n has \n three lines"
    puts b
    # assert_equal 3, count_lines(b)
  end
end
