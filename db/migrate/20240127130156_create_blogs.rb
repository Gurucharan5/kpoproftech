class CreateBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
    add_column :blogs, :image, :string
  end
end
