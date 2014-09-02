class AddCreatorIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :creator_id, :int
  end
end
