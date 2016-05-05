class MaterialsController < ApplicationController


    def Inventario
      @materials = Material.order("name ASC")
    end

    def Buscar
      @materials = Material.where("name LIKE ?","%#{params[:search]}%")
      render('Inventario')
    end

    def MaterialDatos
      @material = Material.find(params[:id])
    end

    def CrearMaterial
      @material = Material.new(material_params)
      if @material.save
        redirect_to(:action => 'Inventario')
      end
    end

    def ModificarMaterial
      @material = Patient.find_by(params[:id])
      if @material.update_attributes(material_params)
        redirect_to(:action => 'Inventario')
      else
        render('MaterialDatos')
      end

    end

    def BorrarMaterial
      @material = Material.find(params[:id])
      @material.destroy
      redirect_to(:action => 'Inventario')
    end

    private
    def material_params
      params.require(:material).permit(:name, :quantity, :supplier_id)
    end
end
