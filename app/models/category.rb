class Category < ApplicationRecord
    has_many :articles, dependent: :destroy
    validates :name, presence: true
    before_save :downcase_name

    scope :ordered_by_priority, -> { order(priority: :asc) }
    scope :fashion, -> { where(name: 'fashion') }
    scope :entertainment, -> { where(name: 'entertainment') }
    scope :sports, -> { where(name: 'sports') }
    scope :business, -> { where(name: 'business') }
    scope :technology, -> { where(name: 'technology') }

    private

    def downcase_name
        self.name = name.downcase
    end

end
