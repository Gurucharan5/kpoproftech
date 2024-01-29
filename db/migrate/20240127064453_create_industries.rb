class CreateIndustries < ActiveRecord::Migration[7.1]
  def change
    create_table :industries do |t|
      t.string :name

      t.timestamps
    end
    add_column :industries, :image, :string
  end
end
