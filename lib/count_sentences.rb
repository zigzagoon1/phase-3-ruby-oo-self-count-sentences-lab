require 'pry'

class String

  def sentence?
    self.end_with?("!", ".", "?")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = self.split(/!|[?]|!+|[.]|[.{3}]/).reject {|sentence| sentence.empty?}
    sentences.count
  end
end

"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences