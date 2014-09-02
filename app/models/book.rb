class Book < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  extend FriendlyId

  friendly_id :name, use: :slugged

  mount_uploader :cover, CoverUploader

end
