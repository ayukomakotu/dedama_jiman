class Add < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :michine, null: false,
                                    foreign_key: true
  end
end
