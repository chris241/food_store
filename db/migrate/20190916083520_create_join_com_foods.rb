class CreateJoinComFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :join_com_foods do |t|
      t.belongs_to :command, index: true
      t.belongs_to :food, index: true
      t.integer :quantity
      t.timestamps
    end
  end
end
