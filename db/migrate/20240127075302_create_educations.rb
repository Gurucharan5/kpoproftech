class CreateEducations < ActiveRecord::Migration[7.1]
  def change
    create_table :educations do |t|
      t.string :name

      t.timestamps
    end
    add_column :educations, :image, :string
  end
end
