class ASegmento < ApplicationRecord
  belongs_to :a_categoria
  has_many :a_grupos, dependent: :destroy

  validates :descricao, presence: true
end
