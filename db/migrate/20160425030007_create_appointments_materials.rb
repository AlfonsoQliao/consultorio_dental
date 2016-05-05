class CreateAppointmentsMaterials < ActiveRecord::Migration
  def change
    create_table :appointments_materials do |t|

      t.belongs_to :appointment, index: true
      t.belongs_to :material, index: true

    end
  end
end
