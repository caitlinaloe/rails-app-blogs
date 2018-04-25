require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  test 'Blog.new works' do
    assert_equal Blog.new.class == Blog
  end

  test 'Blog grading' do
    blog_1 = Blog.new
    puts 'blog_1.grading(num)'

    puts '59 = F'
    assert_equal 'F', blog_1.grading(59)

    puts '61 = D'
    assert_equal 'D', blog_1.grading(61)

    puts '79 = C'
    assert_equal 'C', blog_1.grading(79)

    puts '80 = B'
    assert_equal 'B', blog_1.grading(80)

    puts '95 = A'
    assert_equal 'A', blog_1.grading(95)
  end
end
