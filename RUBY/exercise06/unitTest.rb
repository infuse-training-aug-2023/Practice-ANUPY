require 'test/unit'
require_relative 'exercise_six'

class TestAverage < Test::Unit::TestCase
   
    def test_content_creation
        test_content_creation = Content.new('content.txt','the string that will be base encoded')
        assert test_content_creation.instance_of? Content
    end

    def test_read_file
        test_content_creation = Content.new('content.txt','the string that will be base encoded')
        assert_equal(1,test_content_creation.read_file)
    end

    def test_write_file
        test_content_creation = Content.new('content.txt','the string that will be base encoded')
        assert_equal(1,test_content_creation.write_file)
    end
end