class AEvento < ApplicationRecord
  belongs_to :a_grupo

  validates :quantidade_dias, presence: true
  validates :quantidade_pessoas, presence: true
end
