class CreateJoinResFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :join_res_foods do |t|
      

      t.belongs_to :reservation, index: true
      t.belongs_to :food, index: true

      t.timestamps
    end
  end
end
