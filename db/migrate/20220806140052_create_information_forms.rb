class CreateInformationForms < ActiveRecord::Migration[7.0]
  def change
    create_table :information_forms do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.integer :mobile
      t.integer :fuel_capacity
      t.integer :current_content
      t.integer :fuel_needed
      t.string :instructions_for_delivery
      t.string :comment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
