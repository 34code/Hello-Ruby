require_relative 'hashes.rb'
require 'test/unit'

class TestWordsFromString < Test::Unit::TestCase
  def test_empty_string
    assert_equal([],words_from_string(""))
    assert_equal([],words_from_string("    "))
  end
  
  def test_single_word
    assert_equal(["each"],words_from_string("each"))
    assert_equal(["each"],words_from_string("  each    "))
  end
  
  def test_multiple_words
    assert_equal(["to", "each", "his", "own"], words_from_string("To each his own"))
  end
  
  def test_ignores_punctuation
    assert_equal(["to", "each", "hi's", "own"], words_from_string("<To!> each hi's -own-"))
  end
  
end

class TestCountFrequency < Test::Unit::TestCase
  def test_empty_list
    assert_equal({},count_frequency([]))
  end
  
  def test_single_word
    assert_equal({"each" => 1},count_frequency(["each"]))
  end
  
  def test_two_different_words
    assert_equal({"to" => 1, "each" => 1}, count_frequency(["each", "to"]))
  end
  
  def test_twoWords_with_adjacent_repeat
    assert_equal({"to" => 2, "each" => 1}, count_frequency(["each", "to", "to"]))
  end
  
  def test_twoWords_with_non_adjacent_repeat
    assert_equal({"to" => 2, "each" => 1}, count_frequency(["to", "each", "to"]))
  end
  
end


