class PatientsController < ApplicationController


  def Expediente
    @patients = Patient.order("id ASC")
  end

  def Buscar
    @patients = Patient.where("name LIKE ?","%#{params[:search]}%")
    render('Expediente')
  end

  def PacienteExpediente
    @patient = Patient.find(params[:id])
  end

  def CrearPaciente
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to(:action => 'Expediente')
    end
  end

  def ModificarPaciente
    @patient = Patient.find_by(params[:id])
    if @patient.update_attributes(patient_params)
      redirect_to(:action => 'Expediente')
    else
      render('PacienteExpediente')
    end
  end

  def BorrarPaciente
    @patient = Patient.find(params[:id])
    @patient.destroy
      redirect_to(:action => 'Expediente')
  end

  private
  def patient_params
    params.require(:patient).permit(:name, :surname, :lastname, :birth_date, :phone, :cellphone, :address, :recomendation, :parents, :gender, :mail, :rfc)
  end
end
