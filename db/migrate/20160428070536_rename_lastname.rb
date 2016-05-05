class RenameLastname < ActiveRecord::Migration
  def change
    rename_column :appointments, :lasname, :lastname
  end
end
