class Classification < ApplicationRecord
    has_many :posts
    has_many :machines
    has_many :kinds
end
