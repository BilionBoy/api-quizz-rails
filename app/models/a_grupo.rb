class AGrupo < ApplicationRecord
  belongs_to :a_segmento
  has_many :a_eventos, dependent: :destroy

  validates :descricao, presence: true
end
