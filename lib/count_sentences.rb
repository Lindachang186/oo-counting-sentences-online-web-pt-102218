require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    new = self.split(/[.?!]/)
    new.each_with_index.map do |sentence, index|
      if sentence == " "
        sentence[index].shift()
      end
    end
    new.count
  end
end
