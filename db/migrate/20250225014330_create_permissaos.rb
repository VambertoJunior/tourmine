class CreatePermissaos < ActiveRecord::Migration[8.0]
  def change
    create_table :permissaos do |t|
      t.references :usuario, null: false, foreign_key: true
      t.string :papel

      t.timestamps
    end
  end
end
