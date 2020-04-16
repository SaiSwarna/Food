class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.text :address
      t.text :number
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
