class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string "duration"
      t.datetime "begin", :null => false
      t.datetime "end", :null => false
      t.float "cost", :null => false
      t.string "treatments", :null => false
      t.string "diagnostic"
      t.belongs_to :patient, index: true
      t.belongs_to :dentist, index: true
      t.timestamps null: false
    end
  end
end
