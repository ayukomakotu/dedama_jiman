class Kind < ApplicationRecord
    has_many :posts
    has_many :machines
    has_many :posts,          through: :machines,
                               source: :post
    belongs_to :classification
    validates :name, presence: true
end
