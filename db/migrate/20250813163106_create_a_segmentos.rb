class CreateASegmentos < ActiveRecord::Migration[7.2]
  def change
    create_table :a_segmentos do |t|
      t.string :descricao
      t.references :a_categoria, null: false, foreign_key: true

      t.timestamps
    end
  end
end
