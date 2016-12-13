def add a, b
  a + b
end

def subtract a, b
  a - b
end

def sum arr
  s = 0
  arr.each do |item|
    s += item
  end
  s
end

def multiply *a
  m = 1
  a.each do |num|
    m *= num
  end
  m
end

def power a, b
  a ** b
end

def factorial num
  sum = 1
  for i in 1..num do
    sum *= i
  end
  sum
end
