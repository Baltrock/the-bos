class ChangeIndexIdColumnLineForUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :information_forms, :user_id_id, :user_id
  end
end
