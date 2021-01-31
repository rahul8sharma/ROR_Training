class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :tags, dependent: :destroy

  enum state: [:draft, :published, :archived]

  validates :title, :description, :state, presence: true
  validates :description, length: { within: 50..200 }

  after_validation :post_have_single_draft_state_record?

  # These scopes also provided by enum
  scope :published, -> { where(state: :published) }
  scope :draft, -> { where(state: :published) }

  def post_have_single_draft_state_record?
    if Post.where(state: :draft).count >= 1 && self.draft?
      errors.add(:state, "You already have a draft state record. Please provide another state for this record.")
    end
  end
end
