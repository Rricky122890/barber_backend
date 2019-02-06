class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer "barber_id"
      t.integer "user_id"
      t.string "username"
      t.string "notes"
      t.timestamps
    end
  end
end
