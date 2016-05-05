class CreateDentists < ActiveRecord::Migration
  def change
    create_table :dentists do |t|
      t.string "name", :limit => 50, :null => false
      t.string "surname", :limit => 50, :null => false
      t.string "specialty", :limit => 100
      t.string "address", :null => false
      t.string "phone", :limit => 30, :null => false
      t.string "mail", :limit => 100, :null => false
      t.string "rfc", :null => false
      t.belongs_to :assistants, index: true
    end
  end
end
