def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(array)
  a = 0
  array.each do |i|
    i.to_i
    a += i
  end
  a
end

def multiply(*numbers)
  a = 1
  numbers.each do |i|
    i.to_i
    a = a * i
  end
  a
end

def power(x,y)
  x ** y
end

def factorial(x)
  if x == 0
    1
  else
    counter = x
    a = x
    until counter == 1
      counter -= 1
      a = a * counter
    end
    a
  end
end
