class CreateSpecialties < ActiveRecord::Migration[6.1]
  def change
    create_table :specialties do |t|
      t.string :specialty
      t.string :string
      t.belongs_to :doctors, index: true
      t.timestamps
    end
  end
end
