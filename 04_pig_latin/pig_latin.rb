def translate phrase
  sentence_arr = []
  phrase.split(" ").each do |word|
    sentence_arr.push(translate_word(word))
  end
  sentence_arr.join(" ")
end

def translate_word word
  if word =~ /\A[^aeiou]qu/ || word =~ /\A[q]u/
    qu_pigifier(word)
  elsif word =~ /A[aeiou]/
    vowel_pigifier(word)
  else
    consonant_pigifier(word)
  end
end

def vowel_pigifier word
  if word[-1] =~ /[[:punct:]]/
    punc_end = word[-1]
    word = word[0...word.length - 1]
    word + "ay" + punc_end
  else
    word + "ay"
  end
end

def qu_pigifier word
  answer = ""
  word.split("").each_with_index do |letter, index|
    if letter == "q"
      answer = handle_possible_punct(word, (index + 2))
      break
    end
  end
  answer
end

def consonant_pigifier word
  answer = ""
  word.split("").each_with_index do |letter, index|
    if letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u'
      answer = handle_possible_punct(word, index)
      break
    end
  end
  answer
end

def handle_possible_punct word, index
  if word[-1] =~ /[[:punct:]]/
    punc_end = word[-1]
    word = word[0...word.length - 1]
    build_final_word(word, index, punc_end)
  else
    build_final_word(word, index)
  end
end

def build_final_word word, index, punc = ""
  if word[0] =~ /[[:upper:]]/
    move_to_end = word[0...index]
    length = word.length
    ((word[index..length] + move_to_end + "ay" + punc).downcase).capitalize
  else
    move_to_end = word[0...index]
    length = word.length
    word[index..length] + move_to_end + "ay" + punc
  end
end
