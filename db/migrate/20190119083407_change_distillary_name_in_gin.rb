class ChangeDistillaryNameInGin < ActiveRecord::Migration[5.2]
  def change
    rename_column :gins, :distillary_id, :distillery_id 
  end
end
