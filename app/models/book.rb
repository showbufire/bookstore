# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  slug       :string(255)
#  cover      :string(255)
#  creator_id :integer
#  desc       :string(255)
#
# Indexes
#
#  index_books_on_slug  (slug) UNIQUE
#

class Book < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  extend FriendlyId

  friendly_id :name, use: :slugged

  mount_uploader :cover, CoverUploader

end
