class Arrayoperations

    def out_of_bound(arr,index)
        if (index>arr.length-1 || index<0)
            return "Out of bound"
        end
    end

    def element_at(arr,index)
        bound_check = out_of_bound(arr,index)
        if (bound_check)
            return bound_check
        else
            return arr[index]
        end
    end

    def inclusive_range(arr,start_pos,end_pos)
        bound_check_start = out_of_bound(arr,start_pos)
        bound_check_end = out_of_bound(arr,end_pos)
        if (bound_check_start)
            return bound_check_start
        elsif (bound_check_end)
            return bound_check_end
        else
            return arr[start_pos..end_pos]
        end
    end

    def non_inclusive_range(arr,start_pos,end_pos)
        bound_check_start = out_of_bound(arr,start_pos)
        if (bound_check_start)
            return bound_check_start
        elsif (end_pos>arr.length)
            return "Out of bound"
        else
            return arr[start_pos...end_pos]
        end
    end

    def start_and_length(arr,start_pos,length)
        elements = start_pos+length

        bound_check_start = out_of_bound(arr,start_pos)
        bound_check_end = out_of_bound(arr,length)
        if (bound_check_start)
            return bound_check_start
        elsif (bound_check_end)
            return bound_check_end
        else
            return arr[start_pos...elements]
        end
        
        # return length-start_pos
    end

end
arrayObj = Arrayoperations.new()
# arrayObj.out_of_bound([9,5,1,2,3,4,0,-1],8)
arr = [9,5,1,2,3,4,0,-1]
# arrayObj.element_at(arr,1)
# arrayObj.inclusive_range(arr,1,3)
# arrayObj.non_inclusive_range(arr,1,3)
arrayObj.start_and_length(arr,1,2)
