class CreateGuidelines < ActiveRecord::Migration[7.1]
  def change
    create_table :guidelines do |t|
      t.string :name

      t.timestamps
    end
    add_column :guidelines, :image, :string
  end
end
