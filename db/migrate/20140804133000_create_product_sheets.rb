class CreateProductSheets < ActiveRecord::Migration
  def change
    create_table :product_sheets do |t|
      t.string :product_name
      t.integer :set_price
      t.text :remark
      t.string :product_class

      t.timestamps
    end
  end
end
