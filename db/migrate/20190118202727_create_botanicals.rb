class CreateBotanicals < ActiveRecord::Migration[5.2]
  def change
    create_table :botanicals do |t|
      t.string :name
      t.string :slug
      t.text :description

      t.timestamps
    end
  end
end
