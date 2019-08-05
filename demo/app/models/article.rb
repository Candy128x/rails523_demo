class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :title, presence: true, length: {minimum: 5}
    paginates_per 5

    def self.search(search)
        where("title LIKE ?", "%#{search}%")
    end
end
