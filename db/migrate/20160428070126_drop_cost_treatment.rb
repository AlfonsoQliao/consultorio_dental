class DropCostTreatment < ActiveRecord::Migration
  def change
    remove_column :appointments, :cost
    remove_column :appointments, :treatments
  end
end
