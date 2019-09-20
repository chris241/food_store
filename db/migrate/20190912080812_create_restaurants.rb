class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :image_url
      t.belongs_to :gerant, index: true

      t.timestamps
    end
  end
end
