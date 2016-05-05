class AssistantsController < ApplicationController

    def Asistentes
      @assistants = Assistant.order("id ASC")
    end

    def Buscar
      @assistants = Assistant.where("name LIKE ?","%#{params[:search]}%")
      render('Asistentes')
    end

    def CrearAsistente
      @assistant = Assistant.new(assistant_params)
      if @assistant.save
        redirect_to(:action => 'Asistentes')
      end
    end

    def MostrarAsistente
      @assistant = Assistant.find_by(params[:id])
    end

    def ModificarAsistente
      @assistant = Assistant.find_by(params[:id])
      if @assistant.update_attributes(assistant_params)
        redirect_to(:action => 'Asistentes')
      else
        render('Asistentes')
      end
    end

    def BorrarAsistente
      @assistant = Assistant.find(params[:id])
      @assistant.destroy
      redirect_to(:action => 'Asistentes')
    end

    private
    def assistant_params
      params.require(:assistant).permit(:name, :surname, :address, :phone, :social_security_number)
    end


end
