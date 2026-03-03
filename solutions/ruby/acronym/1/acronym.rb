module Acronym
  def self.abbreviate(phrase)
    phrase.split(/[\s\-_]+/).map { |word| word[/[a-zA-Z]/].upcase }.join
  end
end