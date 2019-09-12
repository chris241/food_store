class CreateJoinResMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :join_res_menus do |t|
      t.belongs_to :menu, index: true
      t.belongs_to :reservation, index: true
      t.timestamps
    end
  end
end
