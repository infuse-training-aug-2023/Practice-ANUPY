require 'json'

class Jsonoperations
@@data =''
@@file_path =''
    def initialize(data,file_path)
        @@data = data
        @@file_path = file_path
    end

    def save_to_file
        File.open(@@file_path,'w') do |file|
            file.write(JSON.dump(@@data))
        end
    end
    
    def read_file
        read = File.read(@@file_path)
        person = JSON.parse(read)
        person['first_name'],person['last_name'] = person['name'].split(" ")
        person.delete('name')
        @@data = person
        if(person)
            return 1
        end
    end

    def write_to_file
        file_path = "Anup_#{Time.now.utc.to_i}.json"
        # File.new(file_path,'w')# print file_path
        File.open(file_path,'w') do |file|
            file.write(JSON.dump(@@data))
        end
        if(!is_empty = File.size(file_path) == 0)
            return 1
        end
        
    end
end
