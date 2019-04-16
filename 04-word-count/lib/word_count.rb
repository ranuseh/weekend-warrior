
def words(words)
  split_words = words.split(' ')
  word_hash = Hash.new 0
  split_words.each do |word|
    word_hash[word] += 1
  end
  word_hash
end

print words('The Word Finder word search unscrambles your
  letters, searches our Scrabble dictionary for words
  that win, and gives them to you sorted by word length
  and point value.')
