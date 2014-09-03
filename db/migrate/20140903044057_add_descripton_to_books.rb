class AddDescriptonToBooks < ActiveRecord::Migration
  def change
    add_column :books, :desc, :string
  end
end
