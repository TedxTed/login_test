class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :created_at

  # UserSerializer.new(resource).serializable_hash[:data][:attributes]
  # And multiple records by,
  # UserSerializer.new(resource).serializable_hash[:data].map{|data| data[:attributes]}
end
