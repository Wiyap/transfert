class CreateJoinPotinTags < ActiveRecord::Migration[5.2]
  def change
    create_table :join_potin_tags do |t|
      t.belongs_to :potin
      t.belongs_to :tag
      t.timestamps
    end
  end
end
