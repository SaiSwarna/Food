class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.text :text1
      t.text :text2
      t.float :text3

      t.timestamps
    end
  end
end
