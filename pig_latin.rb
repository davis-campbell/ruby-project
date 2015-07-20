def translate(string)
  array = string.split(' ')
  newArray = []
  array.each do |i|
    
    index = i.index(/[aeiou]/)
    bit1 = i.slice(0,index)
    bit2 = i.slice(index,i.length)
    if bit1.include?('q')
      bit1 << 'u'
      bit2 = bit2.slice(1,bit2.length)
    end
    newWord = "#{bit2}#{bit1}ay"
    newArray.push(newWord)
  end
  newArray.join(' ').to_s
end
