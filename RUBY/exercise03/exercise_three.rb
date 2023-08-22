class Hashoperations
@@hash_values = {}

    def initialize(hash_values)
        @@hash_values = hash_values
    end

    def print_hash(hash_values)
        hash_values.each do |key,value|
            print "#{key},#{value}"
        end
    end
    
    def add_hash(hash_values,key,value)
        hash_values[key] = value;
        print_hash(hash_values)
    end

    def delete_non_Integer(hash_values)
        hash_values.each do |key,value|
            if(!key.is_a?Integer)
                hash_values.delete(key)
            end
        end
        # printHash(hash_values)
    end

    def delete_even_keys(hash_values)
        for key,value in hash_values do
            if (key % 2 == 0)
                hash_values.delete(key)
            end
        end
        
        
    end
end

hash_values = {
    532455.22 => 19,
    294823.33 => 319,
    412030 => 299,
    410913 => 123
};

# hashh = Hash.new(hash_values)
# hashh.print_hash(hash_values)
# hashh.add_hash(hash_values,543121,100)
# hashh.delete_non_Integer(hash_values)
# hashh.print_hash(hash_values)
# hashh.delete_even_keys(hash_values)
# hashh.print_hash(hash_values)