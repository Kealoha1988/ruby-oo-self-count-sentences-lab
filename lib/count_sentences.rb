require 'pry'

class String

  def sentence?
    self.to_s.include?(".")
  end

  def question?
    self.to_s.include?("?")
  end

  def exclamation?
    self.to_s.include?("!")
  end

  def count_sentences
    self.split(/[.?!]/).delete_if{|x| x.length < 2}.count
end
end