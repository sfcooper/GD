class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :snippet
      t.text :body
      t.string :slug
      t.integer :tags

      t.timestamps
    end
  end
end
