require 'pry'

ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(phrases)
  phrases.sort_by do |phrase|
    phrase.chars.map.with_index do |char, i|
      if char != " "
        ESPERANTO_ALPHABET.chars.index(phrase[i])
      end
    end
  end
end