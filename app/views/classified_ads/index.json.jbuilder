json.array!(@classified_ads) do |classified_ad|
  json.extract! classified_ad, :id, :title, :description
  json.url classified_ad_url(classified_ad, format: :json)
end
