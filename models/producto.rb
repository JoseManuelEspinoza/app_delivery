class Producto < ApplicationRecord 
  belongs_to :tienda
  belongs_to :categoria

  validates :nombre, :descripcion, :precio, :cantidad, presence: true

  has_many :pedidos, through: :line_items
  has_many :line_items
end
