class Post < Prime::Model
  timestamp_attributes
  attribute :title
  has_many :post_photos
end
