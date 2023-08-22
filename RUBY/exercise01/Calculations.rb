class Calculations
@@string =""
@@finalString =""
    def initialize(string)
        @@string = string
    end

    def average_calculation(string)
        a,b, c = string.split('-')
        b = b.to_f
        c = c.to_f
        sum = b+c
        @@finalString = "#{a}-#{sum}"
        return sum
    end

    def serial_average
       return @@finalString
    end
end