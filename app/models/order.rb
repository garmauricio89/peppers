class Order < ApplicationRecord
	belongs_to :user
	has_many :items
	validates :quantity, presence: true
	
end
