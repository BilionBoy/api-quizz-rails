class AEventoSerializer < ActiveModel::Serializer
  attributes :id, :quantidade_dias, :quantidade_pessoas

  # inclui o grupo
  attribute :grupo do
    {
      id: object.a_grupo.id,
      descricao: object.a_grupo.descricao
    }
  end

  # inclui o segmento via grupo
  attribute :segmento do
    {
      id: object.a_grupo.a_segmento.id,
      descricao: object.a_grupo.a_segmento.descricao
    }
  end

  # inclui a categoria via segmento
  attribute :categoria do
    {
      id: object.a_grupo.a_segmento.a_categoria.id,
      descricao: object.a_grupo.a_segmento.a_categoria.descricao
    }
  end
end
