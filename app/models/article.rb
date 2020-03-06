class Article < ApplicationRecord
  belongs_to :author, class_name: "User"
  belongs_to :category
  has_many :likes, dependent: :destroy


  scope :featured_article, -> { order(created_at: :asc).last(1) }
  scope :most_recent, -> { order(created_at: :desc) }

end
