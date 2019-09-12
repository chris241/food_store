class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
   	 t.integer :nbr_person
     t.datetime :date
     t.belongs_to :client, index: true
     t.belongs_to :restaurant, index: true
      t.timestamps
    end
  end
end
