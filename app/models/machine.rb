class Machine < ApplicationRecord
    has_many :posts
    belongs_to :kind
    belongs_to :classification
    validates :name, presence: true                     
end
