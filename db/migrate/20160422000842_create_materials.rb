class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string "name", :limit => 50, :null => false
      t.integer "quantity", :null => false
      t.belongs_to :supplier, index: true
    end
  end
end