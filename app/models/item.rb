class Item < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :user, presence: true

  default_scope { order('created_at ASC') }
end
