class SuppliersController < ApplicationController
  def Proveedores
    @suppliers = Supplier.order("id ASC")
  end

  def Buscar
    @suppliers = Supplier.where("name LIKE ?","%#{params[:search]}%")
    render('Proveedores')
  end

  def DatosProveedores
    @supplier = Supplier.find(params[:id])
  end

  def CrearProveedor
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      redirect_to(:action => 'Proveedores')
    end
  end

  def ModificarProveedor
    @supplier = Supplier.find_by(params[:id])
    if @supplier.update_attributes(supplier_params)
      redirect_to(:action => 'Proveedores')
    else
      render('DatosProveedores')
    end
  end

  def BorrarProveedor
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
      redirect_to(:action => 'Proveedores')
  end
  
  private
  def supplier_params
    params.require(:supplier).permit(:name, :address, :phone, :rfc)
  end

end
