require 'test/unit'
require_relative 'exercise_five'

class TestAverage < Test::Unit::TestCase
   
    def test_json_creation
        test_json_creation = Jsonoperations.new( {
            "name": "Nicole Smith",
            "age": 25,
            "salary": 25552.67
            },'content.json')
        assert test_json_creation.instance_of? Jsonoperations
    end

    def test_read_file
        test_json_creation = Jsonoperations.new( {
            "name": "Nicole Smith",
            "age": 25,
            "salary": 25552.67
            },'content.json')
        assert_equal("Read successful",test_json_creation.read_file)
    end

    def test_write_file
        test_json_creation = Jsonoperations.new( {
            "name": "Nicole Smith",
            "age": 25,
            "salary": 25552.67
            },'content.json')
        assert_equal("File write successful",test_json_creation.write_to_file)
    end
end