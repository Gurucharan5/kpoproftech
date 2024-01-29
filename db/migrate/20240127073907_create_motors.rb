class CreateMotors < ActiveRecord::Migration[7.1]
  def change
    create_table :motors do |t|
      t.string :name

      t.timestamps
    end

    add_column :motors, :image, :string
  end
end
