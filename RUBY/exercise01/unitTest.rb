require 'test/unit'
require_relative 'Calculations'

class TestAverage < Test::Unit::TestCase
    def test_make_calculations_object
        created_calculations = Calculations.new('123-22.22-33.33')
        assert created_calculations.instance_of? Calculations
    end

    def test_average_calculation
        created_average = Calculations.new('123-22.22-33.33')
        assert_equal(55.55,created_average.average_calculation('123-22.22-33.33'))
    end

    def test_serial_average
        test_serial_average = Calculations.new('123-22.22-33.33')
        assert_equal('123-55.55',test_serial_average.serial_average)
    end

end