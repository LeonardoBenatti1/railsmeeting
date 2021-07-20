class CreateReuniaos < ActiveRecord::Migration[6.1]
  def change
    create_table :reuniaos do |t|
      t.string :nome_completo
      t.datetime :data
      t.string :descricao

      t.timestamps
    end
  end
end
