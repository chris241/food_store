class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :duration
      t.string :image_url
      t.belongs_to :menu, index: true


      t.timestamps
    end
  end
end
