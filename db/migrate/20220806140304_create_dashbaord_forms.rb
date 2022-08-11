class CreateDashbaordForms < ActiveRecord::Migration[7.0]
  def change
    create_table :dashbaord_forms do |t|
      t.string :company_name
      t.string :company_address
      t.integer :phone_number
      t.integer :pounds_per_litre
      t.string :comment
      t.integer :rating
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
