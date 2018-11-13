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
    binding.pry
    self.split(/[.?!]/)
    self.each_index do |item, index|
      if item.include?(" ")
        item.shift
      end
      return self.count
    end
    end
end
