class CreateKinds < ActiveRecord::Migration[6.1]
  def change
    create_table :kinds do |t|
      t.text :name
      t.references :classification, null: false,
                                    foreign_key: true

      t.timestamps
    end
    add_index :kinds, :name,        unique: true
  end
end
