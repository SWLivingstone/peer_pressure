class CreateListItems < ActiveRecord::Migration[5.1]
  def change
    create_table :list_items do |t|
      t.string :text
      t.text :details
      t.boolean :is_complete
      t.timestamp :expires
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
