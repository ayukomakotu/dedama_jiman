class Kind < ApplicationRecord
    has_many :posts
    has_many :machines
    belongs_to :classification
    validates :name, presence: true, uniqueness: true
end
