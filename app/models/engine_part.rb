class EnginePart < ApplicationRecord
  has_one :part_group, as: :partable, dependent: :destroy

  validates :ebs_number, :car_make, :chassis_number, :engine_number, :engine_cc, presence: true
end
