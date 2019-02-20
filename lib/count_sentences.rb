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
    sentences = self.split(/[.!?]/)
    #sentences.reject!{ |i| i.empty? || i == "." || i == "?" || i == "!"}
    sentences.reject!{ |i| i =~ /[.!?]/ || i.empty?}
    sentences.length
  end
end
