class Sports
@@sports = []
@@skip_num = 0
@@finalarray ={}

    def initialize(sports,skip_num)
        @@sports = sports
        @@skip_num = skip_num
    end

    def skip_sports(sports,skip_num)
        sports.each_with_index do |element, index|
            next if index < skip_num
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
