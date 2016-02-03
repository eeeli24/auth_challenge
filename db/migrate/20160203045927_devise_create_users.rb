class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :first_name
      t.string :second_name
      t.integer :phone_number
      t.boolean :active, default: true

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
  end
end
