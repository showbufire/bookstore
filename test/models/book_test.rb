# == Schema Information
#
# Table name: books
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  slug         :string(255)
#  cover        :string(255)
#  creator_id   :integer
#  desc         :string(255)
#  published_at :datetime
#
# Indexes
#
#  index_books_on_slug  (slug) UNIQUE
#

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
