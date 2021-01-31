
module StringOperations
  extend ActiveSupport::Concern

  def vowel_count(str)
    str.count("aeoui")
  end
end