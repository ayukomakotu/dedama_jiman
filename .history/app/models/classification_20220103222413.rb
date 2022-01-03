class Classification < ApplicationRecord
    has_many :posts
    has_many :machines
    has_many :kinds
    has_many :posts,    through: :machines,
                         source: :post
    validates :name, presence: true
end
