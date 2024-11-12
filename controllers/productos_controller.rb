class ProductosController < ApplicationController
def index
  @productos = Producto.all

  # Filtro por categoría
  if params[:categoria_id].present?
    @productos = @productos.where(categoria_id: params[:categoria_id])
  end

  # Filtro por tienda
  if params[:tienda_id].present?
    @productos = @productos.where(tienda_id: params[:tienda_id])
  end

  # Filtro por oferta
  if params[:oferta].present? && params[:oferta] == 'true'
    @productos = @productos.where(oferta: true)
  end

  # Filtro por rango de precios
  if params[:min_precio].present? && params[:max_precio].present?
    @productos = @productos.where(precio: params[:min_precio]..params[:max_precio])
  end
end
end
