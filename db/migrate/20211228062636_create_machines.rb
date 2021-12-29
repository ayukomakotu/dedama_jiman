class CreateMachines < ActiveRecord::Migration[6.1]
  def change
    create_table :machines do |t|
      t.text :name
      t.references :kind,            null: false,
                                     foreign_key: true
      t.references :classification,  null: false,
                                     foreign_key: true
      t.timestamps
    end
    add_index :machines, :name,      unique: true
  end
end
