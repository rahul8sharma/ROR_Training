module WordCount
  extend ActiveSupport::Concern
  included do
    before_validation :add_text_count
  end

  def add_text_count
    self.word_count = self.description.length
  end
end