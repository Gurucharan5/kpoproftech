class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name

      t.timestamps
    end
    add_column :products, :image, :string
  end
end
