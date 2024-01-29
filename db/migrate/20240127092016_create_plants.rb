class CreatePlants < ActiveRecord::Migration[7.1]
  def change
    create_table :plants do |t|
      t.string :name

      t.timestamps
    end
    add_column :plants, :image, :string
  end
end
