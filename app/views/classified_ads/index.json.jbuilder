json.array!(@classified_ads) do |classified_ad|
  json.extract! classified_ad, :id, :title, :description, :city_id, :user_id, :created_at
  json.city City.find(classified_ad.city_id)
end
