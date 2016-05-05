class EditCostTreatment < ActiveRecord::Migration
  def change
    add_column :appointments, :cost, :float
    add_column :appointments, :treatments, :string
    add_column :appointments, :name, :string
    add_column :appointments, :lasname, :string
  end
end
