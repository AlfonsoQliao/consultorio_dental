class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string "name", :limit => 50, :null => false
      t.string "surname", :limit => 50, :null => false
      t.string "lastname", :limit => 30
      t.date "birth_date"
      t.string "phone", :limit => 30, :null => false
      t.string "cellphone", :limit => 30
      t.string "address"
      t.string "recomendation"
      t.string "parents"
      t.string "mail", :limit => 100, :null => false
      t.string "gender", :null => false
      t.string "rfc", :null => false
      t.belongs_to :dentist, index: true
      t.timestamps null: false
    end
  end
end