require 'test_helper'

class RubySamplesTest < ActiveSupport::TestCase
  test 'add_numbers' do
    require "#{Rails.root}/app/models/ruby_samples/add_numbers.rb"
    assert_equal add_numbers(1, 2), 3
    assert_equal add_numbers('not a number', 4), 4
  end
end
