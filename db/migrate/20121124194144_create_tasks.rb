class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :priority
      t.text :note
      t.integer :employee_id

      t.timestamps
    end
  end
end
