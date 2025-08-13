class CreateACategorias < ActiveRecord::Migration[7.2]
  def change
    create_table :a_categorias do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
