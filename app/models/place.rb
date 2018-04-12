class Place
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :event
end
