class CreateTorneios < ActiveRecord::Migration[8.0]
  def change
    create_table :torneios do |t|
      t.string :nome
      t.text :descricao
      t.date :data_inicio
      t.date :data_fim
      t.string :organizador

      t.timestamps
    end
  end
end
