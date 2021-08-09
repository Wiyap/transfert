class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :datetime
      t.string :city

      t.timestamps
    end
  end
end
