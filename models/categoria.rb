class Categoria < ApplicationRecord
  # Asociaciones para productos, suponiendo que cada categoría tiene varios productos
  has_many :productos
end
