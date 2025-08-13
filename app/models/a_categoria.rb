class ACategoria < ApplicationRecord
  has_many :a_segmentos, dependent: :destroy
  has_many :a_grupos, through: :a_segmentos
end
