class CreateInscricaos < ActiveRecord::Migration[8.0]
  def change
    create_table :inscricaos do |t|
      t.string :participante
      t.references :torneio, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
