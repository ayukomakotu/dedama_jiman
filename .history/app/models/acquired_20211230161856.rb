class Acquired < ApplicationRecord
  belongs_to :post
  validates :number, presence: true
end
