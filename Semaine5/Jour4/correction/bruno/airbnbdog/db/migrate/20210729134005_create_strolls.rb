class CreateStrolls < ActiveRecord::Migration[6.1]
  def change
    create_table :strolls do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
