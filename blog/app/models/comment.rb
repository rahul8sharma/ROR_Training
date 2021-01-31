class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates_length_of :description, maximum: 50, allow_blank: false
end