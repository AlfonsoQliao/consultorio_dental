class AppointmentsController < ApplicationController
  def Agenda
    @appointments = Appointment.order(params[:date])
  end

  def CrearConsulta
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to(:action => 'Agenda')
    end
  end

  def MostrarConsulta
    @appointment = Appointment.find(params[:id])
  end

  def ModificarConsulta
    @appointment = Appointment.find_by(params[:id])
    if @appointment.update_attributes(appointment_params)
      redirect_to :action => 'Agenda'
    end
  end

  def BorrarConsulta
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
      redirect_to(:action => 'Agenda')
  end

  private
  def appointment_params
    params.require(:appointment).permit(:name, :lastname, :begin, :end, :cost,
                                        :treatments, :date, :dentist_id, :diagnostic, :duration)
  end
end
