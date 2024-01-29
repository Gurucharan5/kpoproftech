class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :name

      t.timestamps
    end
    add_column :services, :image, :string
  end
end
