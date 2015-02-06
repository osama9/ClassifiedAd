json.array!(@classified_ads) do |classified_ad|
  json.extract! classified_ad, :id, :title, :description, :user_id, :created_at
end
