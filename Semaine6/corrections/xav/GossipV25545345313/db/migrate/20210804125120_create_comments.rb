class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :content
      t.references :gossip, null: false, foreign_key: true
      t.belongs_to :user
      t.timestamps
    end
  end
end
