class Migrationcity < ActiveRecord::Migration[6.1]
  def change
    add_reference :dogs, :city, foreign_key: true
    add_reference :dogsitters, :city, foreign_key: true
  end
end
