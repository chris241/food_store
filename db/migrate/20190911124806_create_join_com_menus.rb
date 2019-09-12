class CreateJoinComMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :join_com_menus do |t|
      t.belongs_to :command, index: true
      t.belongs_to :menu, index: true
      t.timestamps
    end
  end
end
