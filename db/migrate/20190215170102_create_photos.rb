class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.string :img
      t.integer :user_id
      t.integer :likes
      t.string :category
      t.string :surface_material
      t.string :medium
      t.boolean :sold
      t.string :width
      t.string :heigth

      t.timestamps
    end
  end
end
