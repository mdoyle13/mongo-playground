class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String

  embeds_many :images, as: :imageable
  embeds_one :profile_image, as: :imageable, class_name: "Image::ProfileImage"
  embeds_many :headshot_images, as: :imageable, class_name: "Image::HeadshotImage"

  index({ email: 1 })

  accepts_nested_attributes_for :profile_image, :headshot_images

  validates :email, :first_name, :last_name, presence: true
  validates :email, uniqueness: true
end
