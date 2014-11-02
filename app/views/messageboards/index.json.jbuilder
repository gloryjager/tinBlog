json.array!(@messageboards) do |messageboard|
  json.extract! messageboard, :id, :title, :body, :createdat
  json.url messageboard_url(messageboard, format: :json)
end
