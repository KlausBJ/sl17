# Words for password generation
class Word < ApplicationRecord
  validates_uniqueness_of :word
end
