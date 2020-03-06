class Article < ApplicationRecord
  belongs_to :author, class_name: "User"
  belongs_to :category
  has_many :votes, dependent: :destroy
  mount_uploader :image, PictureUploader

  scope :featured_article, -> { order(created_at: :asc).last(1) }
  scope :most_recent, -> { order(created_at: :desc) }
  scope :featured, -> { order(votes_count: :desc).first }

  # def self.featured
  #   self.maximum(:votes_count).first
  # end
end
