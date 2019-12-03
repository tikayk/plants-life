class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :title, null: false
      t.integer :post_id
      t.timestamps
    end
  end
end
