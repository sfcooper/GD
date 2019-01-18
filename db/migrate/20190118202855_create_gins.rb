class CreateGins < ActiveRecord::Migration[5.2]
  def change
    create_table :gins do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.string :snippet
      t.integer :distillary_id

      t.timestamps
    end
  end
end
