json.services do
  json.array! @services do |service|
    json.extract! service, :id, :title, :category, :description, :time, :location
  end
end
