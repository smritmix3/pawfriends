class AddPictureToPaws < ActiveRecord::Migration
  def change
    add_column :paws, :picture, :string
  end
end
