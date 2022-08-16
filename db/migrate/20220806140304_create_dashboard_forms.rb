class CreateDashboardForms < ActiveRecord::Migration[7.0]
  def change
    create_table :dashboard_forms do |t|
      t.string :company_name
      t.string :company_address
      t.string :representative_name
      t.integer :phone_number
      t.integer :pence_per_litre
      t.string :comment
      t.timestamp :date_of_call
      t.integer :rating
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
