class Shipment < ApplicationRecord
  has_many :part_groups, dependent: :destroy
  validates :invoice_number, :date, :shipped_from_country, :shipped_from_city, 
            :shipped_to_country, :shipped_to_city, :container_number, 
            :EBS_number, :sold_to_company, :total_quantity, :total_amount, presence: true
end
