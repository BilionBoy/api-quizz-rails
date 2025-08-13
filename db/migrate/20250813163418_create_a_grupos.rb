class CreateAGrupos < ActiveRecord::Migration[7.2]
  def change
    create_table :a_grupos do |t|
      t.string :descricao
      t.references :a_segmento, null: false, foreign_key: true

      t.timestamps
    end
  end
end
