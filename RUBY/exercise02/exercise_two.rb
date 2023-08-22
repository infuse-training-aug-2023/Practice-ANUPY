class Array
# @@arr
#     def initialize(arr)
#         @@arr = arr
#     end

    def element_at(arr,index)
        return arr[index]
    end

    def inclusive_range(arr,start_pos,end_pos)
        return arr[start_pos..end_pos]
    end

    def non_inclusive_range(arr,start_pos,end_pos)
        return arr[start_pos...end_pos]
    end

    def start_and_length(arr,start_pos,length)
        return length-start_pos
    end

end
# arrayObj = Arrayoperations.new([9,5,1,2,3,4,0,-1])
# arr = [9,5,1,2,3,4,0,-1]
# arrayObj.element_at(arr,1)
# arrayObj.inclusive_range(arr,1,3)
# arrayObj.non_inclusive_range(arr,1,3)
# arrayObj.start_and_length(arr,1,8)
