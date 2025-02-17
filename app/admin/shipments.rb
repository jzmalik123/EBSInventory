ActiveAdmin.register Shipment do
  permit_params :invoice_number, :date, :shipped_from_country, :shipped_from_city, 
                :shipped_to_country, :shipped_to_city, :container_number, 
                :EBS_number, :sold_to_company, :sold_to_address, :sold_to_zip, 
                :sold_to_email, :sold_to_phone, :total_quantity, :total_amount

  index do
    selectable_column
    id_column
    column :invoice_number
    column :date
    column :shipped_from_country
    column :shipped_to_country
    column :container_number
    column :total_quantity
    column :total_amount
    actions
  end

  form do |f|
    f.inputs "Shipment Details" do
      f.input :invoice_number
      f.input :date, as: :datepicker
      f.input :shipped_from_country, as: :string
      f.input :shipped_from_city
      f.input :shipped_to_country, as: :string
      f.input :shipped_to_city
      f.input :container_number
      f.input :EBS_number
      f.input :sold_to_company
      f.input :sold_to_address
      f.input :sold_to_zip
      f.input :sold_to_email
      f.input :sold_to_phone
      f.input :total_quantity
      f.input :total_amount
    end
    f.actions
  end
end
