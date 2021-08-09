class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :string
      t.string :specialty
      t.string :zip_code
      t.string :city

      t.timestamps
    end
  end
end
