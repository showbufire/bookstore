class RenameFilenameToCoverOfBooks < ActiveRecord::Migration
  def change
    rename_column :books, :filename, :cover
  end
end
