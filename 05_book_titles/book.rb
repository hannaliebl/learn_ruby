class Book
  attr_accessor :title

  def title
    title_arr = []
    words_arr = @title.split(" ")
    title_arr.push(words_arr[0].capitalize)
    words_arr.shift
    words_arr.each do |word|
      if word == 'the' || word == 'a' || word == 'an' || word == 'and' || word == 'of' || word == 'in'
        title_arr.push(word)
      else
        title_arr.push(word.capitalize)
      end
    end
    @title = title_arr.join(" ")
  end
end
