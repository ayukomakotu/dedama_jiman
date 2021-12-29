class CreateKinds < ActiveRecord::Migration[6.1]
  def change
    create_table :kinds do |t|
      t.text :name
      t.reference :classification

      t.timestamps
    end
  end
end
