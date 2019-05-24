class Power < ApplicationRecord
  has_many :heroines
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
