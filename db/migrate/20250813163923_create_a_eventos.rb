class CreateAEventos < ActiveRecord::Migration[7.2]
  def change
    create_table :a_eventos do |t|
      t.references :a_grupo, null: false, foreign_key: true
      t.integer :quantidade_dias
      t.integer :quantidade_pessoas

      t.timestamps
    end
  end
end
