class Heroine < ApplicationRecord
	belongs_to :power
	validates :super_name, {uniqueness: true, length: {minimum: 1}}
end
