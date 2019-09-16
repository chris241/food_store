class CreateCommands < ActiveRecord::Migration[6.0]
  def change
    create_table :commands do |t|
      t.belongs_to :client, index: true
      t.integer :quantity
      t.timestamps
    end
  end
end
