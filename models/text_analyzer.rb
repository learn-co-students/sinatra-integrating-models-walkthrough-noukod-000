# Your TextAnalyzer model code will go here.
class TextAnalyzer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def count_of_words
    @text.split(" ").count
  end

  def count_of_vowels
    @text.downcase.scan(/[aeoui]/).count
  end

  def count_of_consonants
    @text.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    all_letters= @text.downcase.gsub(/[^a-z]/, '').split('')
    used_letter = ""
    letter_count = 0
    letters_to_compare.map do |letter|
      letter_repetitions = all_letters.count(letter)
      if letter_repetitions > letter_count
        letter_count = letter_repetitions
        used_letter = letter
      end
    end
    biggest = [used_letter, letter_count]
  end
end
