class AddDateBeginEndCorrect < ActiveRecord::Migration
  def change
    add_column :appointments, :date, :date
    add_column :appointments, :begin, :time
    add_column :appointments, :end, :time
  end
end
