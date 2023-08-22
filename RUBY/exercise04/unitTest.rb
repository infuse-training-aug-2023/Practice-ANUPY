require 'test/unit'
require_relative 'exercise_four'

class TestAverage < Test::Unit::TestCase

    def test_create_sports
        test_sports_creation = Sports.new(['Criket','Football','Tennis','Hockey'],2)
        assert test_sports_creation.instance_of? Sports
    end

    def test_skip_sports
        test_sports_creation = Sports.new(['Criket','Football','Tennis','Hockey'],2)
        assert_equal(1,test_sports_creation.skip_sports(['Criket','Football','Tennis','Hockey'],2))
    end
end