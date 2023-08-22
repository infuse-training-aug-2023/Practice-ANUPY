require 'test/unit'
require_relative 'exercise_two'

class TestAverage < Test::Unit::TestCase
   
    def test_array_perations
        test_creation = Array.new
        assert test_creation.instance_of? Array
    end

    def test_element_at
        test_element = Array.new
        assert_equal(1,test_element.element_at([9,5,1,2,3,4,0,-1],2))
    end

    def test_inclusive_range
        test_inclusive = Array.new
        assert_equal([1,2,3],test_inclusive.inclusive_range([9,5,1,2,3,4,0,-1],2,4))
    end

    def test_non_inclusive_range
        test_non_inclusive = Array.new
        assert_equal([1,2],test_non_inclusive.non_inclusive_range([9,5,1,2,3,4,0,-1],2,4))
    end

    def test_start_length
        test_start_and = Array.new
        assert_equal(7,test_start_and.start_and_length([9,5,1,2,3,4,0,-1],1,8))
    end
end