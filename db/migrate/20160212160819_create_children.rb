class CreateChildren < ActiveRecord::Migration[5.0]
  def change
    create_table :children do |t|
      t.string :firstName
      t.string :lastName
      t.date :dob
      t.text :allergies
      t.text :medications
      t.text :specialNeeds

      t.timestamps
    end
  end
end
