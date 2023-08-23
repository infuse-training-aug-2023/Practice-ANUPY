require 'test/unit'
require_relative 'exercise_three'

class TestAverage < Test::Unit::TestCase
   
    def test_hash_creation
        test_hash_creation = Hashoperations.new({
            532455.22 => 19,
            294823.33 => 319,
            412030 => 299,
            410913 => 123
        })
        assert test_hash_creation.instance_of? Hashoperations
    end

    def test_print_hash
        test_hash_creation = Hashoperations.new({
            532455.22 => 19,
            294823.33 => 319,
            412030 => 299,
            410913 => 123
        })
        assert_equal({532455.22=>19, 294823.33=>319, 412030=>299, 410913=>123},test_hash_creation.print_hash({
                532455.22 => 19,
                294823.33 => 319,
                412030 => 299,
                410913 => 123
            }))
        
    end

    def test_add_hash
        test_hash_creation = Hashoperations.new({
            532455.22 => 19,
            294823.33 => 319,
            "hello" => 123,
            412030 => 299,
            410913 => 123
        })
        assert_equal({532455.22=>19, 294823.33=>319, "hello" => 123, 412030=>299, 410913=>123,543121=>100},test_hash_creation.add_hash({
                532455.22 => 19,
                294823.33 => 319,
                "hello" => 123,
                412030 => 299,
                410913 => 123
            },543121, 100))
        
    end

    def test_delete_from_hash
        test_hash_creation = Hashoperations.new({
            532455.22 => 19,
            294823.33 => 319,
            "hello" => 123,
            412030 => 299,
            410913 => 123
        })
        assert_equal({410913=>123,543121=>100},test_hash_creation.delete_from_hash({
                532455.22 => 19,
                294823.33 => 319,
                412030 => 299,
                410913 => 123,
                543121 => 100}))
        
    end
end