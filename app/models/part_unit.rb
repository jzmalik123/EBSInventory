class PartUnit < ApplicationRecord
  belongs_to :part_group

  enum status: { pending: 0, scanned: 1, received: 2 }

  validates :qr_code, presence: true, uniqueness: true
end
