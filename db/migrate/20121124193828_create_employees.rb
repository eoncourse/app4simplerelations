class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :position
      t.date :hired
      t.integer :wage
      t.text :note

      t.timestamps
    end
  end
end
