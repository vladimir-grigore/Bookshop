class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.decimal :price
      t.references :author, foreign_key: true
      t.references :genre, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
