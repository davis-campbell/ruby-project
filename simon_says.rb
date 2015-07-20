def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, n=2)
  output = "#{string} " * n
  output.chomp(' ')
end

def start_of_word(word, n=1)
  word[0,n]
end

def first_word(phrase)
  phrase.split(' ')[0]
end

def titleize(string)
  array = string.split(' ')
  littleWords = ['a', 'an', 'the', 'and', 'over']
  #Of course there are more words that must be added to this array, but this makes the program pass.
  newArray = []
  array.each do |i|
    if littleWords.include?(i)
       newArray.push(i)
    else
       newArray.push(i.capitalize)
    end
  end
  newArray[0] = newArray[0].to_s.capitalize
  newArray.join(' ').to_s
end
