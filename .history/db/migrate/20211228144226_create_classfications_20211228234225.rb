class CreateClassfications < ActiveRecord::Migration[6.1]
  def change
    create_table :classfications do |t|
      t.text :name

      t.timestamps
    end
  end
end
