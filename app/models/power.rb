class Power < ApplicationRecord
	has_many :heroines
	validates :name, {uniqueness: true, length: {minimum: 1}}
	validates :description, length: {minimum: 1}
end
