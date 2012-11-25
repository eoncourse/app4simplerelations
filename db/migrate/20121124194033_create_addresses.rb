class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :zip
      t.integer :employee_id

      t.timestamps
    end
  end
end
