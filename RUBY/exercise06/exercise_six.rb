require 'base64'

class Content
@@file_path=""
@@string=""
@@encoded_string=""
    def initialize(file_path,string)
        @@file_path = file_path
        @@string = string
    end

    def read_file
        data=File.read(@@file_path)
        # puts data
        matches = data.scan(@@string).to_s
        # puts matches
        @@encoded_string = Base64.encode64(matches)
        # puts encoded_string
        if(matches)
            return 1
        end
    end

    def write_file
        begin
            data=File.read(@@file_path)
        rescue Errno::ENOENT
            p "File not found"
        else
        update_content = data.gsub(@@string, @@encoded_string)
        file_path = "Anup.txt"
        File.open(file_path, 'w') do |file|
            file.write(update_content)
        end
        if(!is_empty = File.size(file_path) == 0)
            return 1
        end

        end
        
    end
    
end


file_path='content.txt'
string = 'the string that will be base encoded'
content = Content.new(file_path,string)
# content.read_file
content.write_file