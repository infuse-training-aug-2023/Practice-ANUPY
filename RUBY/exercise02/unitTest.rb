require 'test/unit'
require_relative 'exercise_two'

class TestAverage < Test::Unit::TestCase
   
    def test_array_perations
        test_creation = Arrayoperations.new
        assert test_creation.instance_of? Arrayoperations
    end

    def test_out_of_bound
        test_bound = Arrayoperations.new
        assert_equal("Out of bound",test_bound.out_of_bound([9,5,1,2,3,4,0,-1],-1))
    end

    def test_element_at
        test_element = Arrayoperations.new
        assert_equal(1,test_element.element_at([9,5,1,2,3,4,0,-1],2))
    end

    def test_inclusive_range
        test_inclusive = Arrayoperations.new
        assert_equal([1,2,3],test_inclusive.inclusive_range([9,5,1,2,3,4,0,-1],2,4))
    end

    def test_non_inclusive_range
        test_non_inclusive = Arrayoperations.new
        assert_equal([1,2],test_non_inclusive.non_inclusive_range([9,5,1,2,3,4,0,-1],2,4))
    end

    def test_start_length
        test_start_and = Arrayoperations.new
        assert_equal("Out of bound",test_start_and.start_and_length([9,5,1,2,3,4,0,-1],1,8))
    end
end