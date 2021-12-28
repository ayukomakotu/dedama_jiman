class Post < ApplicationRecord
  belongs_to :user
  belongs_to :machine
  default_scope -> {order(created_at: :desc)}
  validates :user_id, presence: true
  validates :content, length: {maximum: 140}
end
