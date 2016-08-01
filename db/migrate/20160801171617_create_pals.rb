class CreatePals < ActiveRecord::Migration
  def change
    create_table :pals do |t|
      t.string :palname
      t.string :email
      t.timestamps
    end
  end
end
