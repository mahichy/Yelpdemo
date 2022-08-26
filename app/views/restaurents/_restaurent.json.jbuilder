json.extract! restaurent, :id, :name, :address, :phone_number, :websit, :created_at, :updated_at
json.url restaurent_url(restaurent, format: :json)
