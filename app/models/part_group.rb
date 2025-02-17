class PartGroup < ApplicationRecord
  belongs_to :shipment
  belongs_to :partable, polymorphic: true
  has_many :part_units, dependent: :destroy

  validates :quantity, :unit_price, :total_price, presence: true
  before_create :set_default_quantity_for_engine

  private

  def set_default_quantity_for_engine
    self.quantity = 1 if partable_type == "EnginePart"
  end
end
