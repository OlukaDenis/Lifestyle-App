class Article < ApplicationRecord
  belongs_to :author, class_name: "User"
  belongs_to :category
  has_many :votes, dependent: :destroy
  mount_uploader :image, PictureUploader

  scope :first_article, -> { order(created_at: :desc).first(1) }
  scope :most_recent, -> { order(created_at: :desc).first(1) }
  scope :recent, -> { order(created_at: :desc) }
  scope :featured_recent, -> { order(created_at: :desc).first(2) }
  scope :featured, -> { order(votes_count: :desc).first }
  scope :most_popular, -> { order(votes_count: :desc).first(5) }

end
