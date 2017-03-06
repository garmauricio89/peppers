class Item < ApplicationRecord
	has_many :orders
	has_many :users, through: :orders
	validates :cost, presence: true
	validates :name, presence: true
end
