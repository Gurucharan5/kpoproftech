class CreateStudies < ActiveRecord::Migration[7.1]
  def change
    create_table :studies do |t|
      t.string :name

      t.timestamps
    end
    add_column :studies, :image, :string
  end
end
