class CreateAssistants < ActiveRecord::Migration
  def change
    create_table :assistants do |t|
      t.string "name", :null => false, :limit => 50
      t.string "surname", :null => false, :limit => 50
      t.string "address", :null => false
      t.string "phone", :null => false, :limit => 30
      t.string "social_security_number", :null => false, :limit => 40
      t.timestamps null: false
    end
  end
end
