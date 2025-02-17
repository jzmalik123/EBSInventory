class AutoPart < ApplicationRecord
  has_one :part_group, as: :partable, dependent: :destroy

  validates :name, presence: true
end
