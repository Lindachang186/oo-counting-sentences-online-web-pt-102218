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
    self.split(/[.?!]/)
    self.each_index do |x|
      if self[x] == " "
        self.shift
      end 
    end
    self.count
end
