# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create a shipment
shipment = Shipment.create!(
  invoice_number: "INV-2024-001",
  date: Date.today,
  shipped_from_country: "Japan",
  shipped_from_city: "Yokohama",
  shipped_to_country: "UK",
  shipped_to_city: "Southampton",
  container_number: "CONT123456",
  EBS_number: "EBS-987654",
  sold_to_company: "Anmol Trading Ltd",
  sold_to_address: "51 Judge Heath Lane, Hayes, Middlesex",
  sold_to_zip: "UB3 2NZ",
  sold_to_email: "anmoltradinguk@gmail.com",
  sold_to_phone: "+447494932929",
  total_quantity: 5,
  total_amount: 500000
)

# Create an engine part
engine = EnginePart.create!(
  car_make: "Toyota",
  chassis_number: "NHP10-1234567",
  engine_number: "1NZ-987654",
  engine_cc: 1490,
  ebs_number: "EBS123"
)

engine_part_group = PartGroup.create!(
  shipment: shipment,
  partable: engine,
  quantity: 1,
  unit_price: 110000,
  total_price: 110000
)

PartUnit.create!(part_group: engine_part_group, qr_code: SecureRandom.hex(8))

# Create an auto part
auto_part = AutoPart.create!(name: "ABS Control")

auto_part_group = PartGroup.create!(
  shipment: shipment,
  partable: auto_part,
  quantity: 3,
  unit_price: 2000,
  total_price: 6000
)

3.times do
  PartUnit.create!(part_group: auto_part_group, qr_code: SecureRandom.hex(8))
end
