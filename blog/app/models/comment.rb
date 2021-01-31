class Comment < ApplicationRecord
  include WordCount
  include BadWord
  extend StringOperations

  belongs_to :user
  belongs_to :post

  validates :description, :word_count, presence: true
  validates_length_of :description, maximum: 50
end
