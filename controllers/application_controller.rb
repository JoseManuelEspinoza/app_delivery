class ApplicationController < ActionController::Base
    # Redirecciona después de iniciar sesión según el rol del usuario
    def after_sign_in_path_for(resource)
      if resource.admin?
        admin_root_path # Redirige al dashboard del administrador
      else
        client_root_path # Redirige al dashboard del cliente
      end
    end
  end
  