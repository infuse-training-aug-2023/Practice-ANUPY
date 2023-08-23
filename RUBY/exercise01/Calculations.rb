class Calculations
@string =""
@finalString =""
    def initialize(string)
        @string = string
        invalid_string_check
    end

    def invalid_string_check
        if (!@string.include?"-")
            return "invalid"
        end
    end

    def average_calculation()
        serial,number_1, number_2 = @string.split('-')
        number_1 = number_1.to_f
        number_2 = number_2.to_f
        sum = number_1+number_2
        @finalString = "#{serial}-#{sum}"
        return sum
    end

    def serial_average
       return @finalString
    end
end

# calculations = Calculations.new('123-22.22-33.33')
# calculations.invalid_string_check