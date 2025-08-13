Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources  :a_categorias
      resources  :a_segmentos
      resources  :a_grupos
      resources  :a_eventos
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
