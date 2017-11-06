class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :title
      t.boolean :is_public
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
