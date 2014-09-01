class AddFilenameToBooks < ActiveRecord::Migration
  def change
    add_column :books, :filename, :string
  end
end
