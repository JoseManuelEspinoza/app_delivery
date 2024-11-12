class LineItem < ApplicationRecord
  belongs_to :pedido
  belongs_to :producto
  belongs_to :cart
end
