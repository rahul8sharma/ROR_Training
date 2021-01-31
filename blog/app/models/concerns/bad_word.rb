module BadWord
  extend ActiveSupport::Concern
  included do
    after_validation :check_bad_words
  end

  def check_bad_words
    bad_words = ['bad', 'poor', 'filthy', 'dirty', 'stupid']
    bad_words.each do |bad_word|
      if self.description.include? bad_word
        errors.add(:description, "have bad words.")
        break
      end
    end
  end
end