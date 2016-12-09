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
