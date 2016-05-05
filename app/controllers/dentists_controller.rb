class DentistsController < ApplicationController

  def Dentistas
    @dentists = Dentist.order("id ASC")
  end

  def Buscar
    @dentists = Dentist.where("name LIKE ?","%#{params[:search]}%")
    render('Dentistas')
  end

  def CrearDentista
    @dentist = Dentist.new(dentist_params)
    if @dentist.save
      redirect_to(:action => 'Dentistas')
    end
  end

  def MostrarDentista
    @dentist = Dentist.find_by(params[:id])
  end

  def ModificarDentista
    @dentist = Dentist.find_by(params[:id])
    if @dentist.update_attributes(dentist_params)
      redirect_to(:action => 'Dentistas')
    else
      render('Dentistas')
    end
  end

  def BorrarDentista
    @dentist = Dentist.find(params[:id])
    @dentist.destroy
    redirect_to(:action => 'Dentistas')
  end

  private
  def dentist_params
    params.require(:dentist).permit(:name, :surname, :address, :phone, :rfc, :mail, :specialty)
  end

end
