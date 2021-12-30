class CreateClassifications < ActiveRecord::Migration[6.1]
  def change
    create_table :classifications do |t|
      t.text :name

      t.timestamps
    end
    add_index :classifications, :name, unique: true
  end
end
