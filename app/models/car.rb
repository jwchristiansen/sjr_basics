class Car < ApplicationRecord
	validates :name, presence: true
	validates :name, uniqueness: true
end
