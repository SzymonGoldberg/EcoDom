class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :efficiency_grade
      t.float :consumption
      t.time :activate
      t.time :deactivate

      t.timestamps
    end
  end
end
