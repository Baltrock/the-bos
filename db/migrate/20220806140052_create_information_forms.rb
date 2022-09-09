class CreateInformationForms < ActiveRecord::Migration[7.0]
  def change
    create_table :information_forms do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.integer :mobile
      t.integer :fuel_needed
      t.string :instructions_for_delivery
      t.string :comment
      t.references :user_id

      t.timestamps
    end
  end
end
