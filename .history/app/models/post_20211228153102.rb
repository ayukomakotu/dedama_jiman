class Post < ApplicationRecord
  belongs_to :user
  belongs_to :Machine
  default_scope -> {order(created_at: :desc)}
  validates :user_id, presence: true
  validates :content, length: {maximum: 140}
end
