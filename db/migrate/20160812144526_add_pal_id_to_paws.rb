class AddPalIdToPaws < ActiveRecord::Migration
  def change
    add_column :paws, :pal_id, :integer
  end
end
