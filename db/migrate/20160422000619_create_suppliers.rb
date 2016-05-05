class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string "name", :null => false, :limit => 50
      t.string "address", :null => false, :limit => 100
      t.string "phone", :null => false, :limit => 30
      t.string "rfc", :null => false, :limit => 30
      t.timestamps null: false
    end
  end
end
