class CreateBusinesses < ActiveRecord::Migration[7.1]
  def change
    create_table :businesses do |t|
      t.string :name

      t.timestamps
    end
    add_column :businesses, :image, :string
  end
end
