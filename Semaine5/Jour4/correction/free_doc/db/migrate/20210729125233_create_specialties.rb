class CreateSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :specialties do |t|
      t.string :type_of_specialty
      t.timestamps
    end
  end
end
