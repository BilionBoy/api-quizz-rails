# config/initializers/inflections.rb

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular "a_categoria",           "a_categorias"
  inflect.irregular "a_segmento",            "a_segmentos"
  inflect.irregular "a_Grupo",              "a_grupos"
end
