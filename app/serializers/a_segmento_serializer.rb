class ASegmentoSerializer < ActiveModel::Serializer
  attributes :id, :descricao

  belongs_to :a_categoria
  has_many :a_grupos
end
