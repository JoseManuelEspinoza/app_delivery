class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # Define los roles usando enum
  enum role: { admin: 'admin', client: 'client' }

  # Asigna el rol predeterminado
  after_initialize :set_default_role, if: :new_record?

   # Relación con la tienda
   has_many :tiendas, foreign_key: :user_id, dependent: :destroy
  private

  has_many :productos, through: :tiendas

  def set_default_role
    self.role ||= 'client'
  end
end
