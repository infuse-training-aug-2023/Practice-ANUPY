require 'json'

class Jsonoperations
@data ={}
@file_path =''
    def initialize(data,file_path)
        @data = data
        @file_path = file_path
        save_to_file
    end

    def save_to_file
        File.open(@file_path,'w') do |file|
            file.write(JSON.dump(@data))
        end

        if(!is_empty = File.size(@file_path) == 0)
            puts "Changes Saved"
        end
    end
    
end

input = ARGV
hash,file_path = input
file_path=file_path.to_s
# puts file_path
j_s = Jsonoperations.new(hash,file_path)