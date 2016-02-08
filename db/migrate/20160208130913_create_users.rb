class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :phoneNumber
      t.string :children

      t.timestamps
    end
  end
end
