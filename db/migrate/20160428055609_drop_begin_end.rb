class DropBeginEnd < ActiveRecord::Migration
  def change
    remove_column :appointments, :begin
    remove_column :appointments, :end
  end
end
