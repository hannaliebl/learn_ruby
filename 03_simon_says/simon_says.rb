def echo phrase
  phrase
end

def shout phrase
  phrase.upcase
end

def repeat phrase, num = 2
  ("#{phrase} " * num).chomp(" ")
end

def start_of_word word, num
  word[0...num]
end

def first_word words
  words.split(" ")[0]
end

def titleize words
  title = []
  words.split(" ").each do |word|
    if word == "and" || word == "over" || word == "the"
      title.push(word)
    else
      title.push(word.capitalize)
    end
  end
  title[0].capitalize!
  title.join(" ")
end
