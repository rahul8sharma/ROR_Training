class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :posts

  validates :name, :email, :password, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { within: 6..40 }
end
