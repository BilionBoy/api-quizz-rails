class AGrupoSerializer < ActiveModel::Serializer
  attributes :id, :descricao
  belongs_to :a_segmento
end
