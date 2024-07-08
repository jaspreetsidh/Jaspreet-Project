class CreateStories < ActiveRecord::Migration[7.1]
  def change
    create_table :stories do |t|
      t.references :book, null: false, foreign_key: true
      t.string :title
      t.text :content
      t.string :author

      t.timestamps
    end
  end
end
