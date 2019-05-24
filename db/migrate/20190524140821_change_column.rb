class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :heroines, :power, :power_id
  end
end
