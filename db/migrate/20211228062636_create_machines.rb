class CreateMachines < ActiveRecord::Migration[6.1]
  def change
    create_table :machines do |t|
      t.text :type

      t.timestamps
    end
  end
end
