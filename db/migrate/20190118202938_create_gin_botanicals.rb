class CreateGinBotanicals < ActiveRecord::Migration[5.2]
  def change
    create_table :gin_botanicals do |t|
      t.integer :gin_id
      t.integer :botanical_id

      t.timestamps
    end
  end
end
