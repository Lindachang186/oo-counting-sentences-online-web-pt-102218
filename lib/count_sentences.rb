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
    new.each do |sentence|
binding.pry
    end
    self.count
  end
end
