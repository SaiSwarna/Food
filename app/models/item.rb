class Item < ApplicationRecord
	has_many :orders, dependent: :destroy
	validates :title, presence: true
	validates :text3, presence: true
end
