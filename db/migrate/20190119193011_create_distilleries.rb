class CreateDistilleries < ActiveRecord::Migration[5.2]
  def change
    create_table :distilleries do |t|
      t.string :name
      t.string :slug
      t.text :snippet
      t.text :description
      t.string :country

      t.timestamps
    end
  end
end
