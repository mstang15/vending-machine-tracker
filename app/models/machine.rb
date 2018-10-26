class Machine < ApplicationRecord
  validates_presence_of :location
  has_many :snacks
  belongs_to :owner

  # def self.average_snack_price
  #   average(:price)
  # end
end
