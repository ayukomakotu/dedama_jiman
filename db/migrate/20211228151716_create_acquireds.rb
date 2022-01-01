class CreateAcquireds < ActiveRecord::Migration[6.1]
  def change
    create_table :acquireds do |t|
      t.integer :number
      t.text :unit
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
    add_index :acquireds, :number, unique: true
    add_index :acquireds, :unit, unique: true
  end
end
