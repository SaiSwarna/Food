class Order < ApplicationRecord
  belongs_to :item
	validates :name, presence: true
	validates :number, presence: true
end
