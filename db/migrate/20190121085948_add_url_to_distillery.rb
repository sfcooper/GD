class AddUrlToDistillery < ActiveRecord::Migration[5.2]
  def change
    add_column :distilleries, :website, :string
  end
end
