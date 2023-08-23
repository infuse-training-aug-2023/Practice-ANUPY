class Sports
@sports = []
@skip_num = 0
@finalarray ={}

    def initialize(sports,skip_num)
        out_of_bound(sports,skip_num)
        @sports = sports
        @skip_num = skip_num
    end

    def out_of_bound(sports,skip_num)
        if (skip_num>sports.length-1 || skip_num<0)
            return "Out of bound"
        end
    end

    def skip_sports(sports,skip_num)
        arr = []
        sports.each_with_index do |element, index|
            next if index < skip_num
            arr[index] = element
            print index,":",element," "
       end
       if(skip_num>=sports.length || skip_num<0)
        return 0
       else
        return 1
       end
    end
end

sp = Sports.new(['Criket','Football','Tennis','Hockey'],2)
sp.skip_sports(['Criket','Football','Tennis','Hockey'],2)
