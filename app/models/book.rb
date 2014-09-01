class Book < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  mount_uploader :cover, CoverUploader
end
