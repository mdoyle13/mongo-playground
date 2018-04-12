class Image
  include Mongoid::Document
  include Mongoid::Timestamps

  field :url, type: String
  embedded_in :imageable, polymorphic: true
end
