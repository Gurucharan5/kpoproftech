class CreateArchitectures < ActiveRecord::Migration[7.1]
  def change
    create_table :architectures do |t|
      t.string :name

      t.timestamps
    end
    add_column :architectures, :image, :string
  end
end
