class Book < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  after_save :store_cover, if: :cover

  attr_accessor :cover

private
  def store_cover
    filename = cover.original_filename
    folder = "public/images/books/#{id}/cover"
    FileUtils.mkdir_p folder
    f = File.open(File.join(folder, filename), 'wb')
    f.write(cover.read)
    f.close

    self.cover = nil
    update filename: filename
  end
end
