class CreateJoinRestoFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :join_resto_foods do |t|
      t.belongs_to :restaurant, index: true
      t.belongs_to :food, index: true
      t.timestamps
    end
  end
end
