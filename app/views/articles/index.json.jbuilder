json.array!(@articles) do |article|
  json.extract! article, :id, :title, :author, :date, :description
  json.url article_url(article, format: :json)
end
