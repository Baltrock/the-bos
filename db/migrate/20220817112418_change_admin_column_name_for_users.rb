class ChangeAdminColumnNameForUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :is_admin, :admin
  end
end
