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
    new.each_index do |sentence, index|
      binding.pry
      if sentence == " "
        sentence.shift()
      end
    end
    new.count
  end
end
