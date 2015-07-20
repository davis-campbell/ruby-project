class Book
  def title(string)
    array = string.split(' ')
    newArray = []
    lowercaseWords = ['a', 'an', 'the', 'and', 'in', 'of']
    array[0] = array[0].capitalize
    array.each do |i|
      if lowercaseWords.include?(i)
      	newArray.push(i)
      else
      	newArray.push(i.capitalize)
      end
    end
    newArray.join(' ').to_s
  end
end
