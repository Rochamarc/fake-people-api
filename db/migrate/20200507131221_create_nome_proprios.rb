class CreateNomeProprios < ActiveRecord::Migration[6.0]
  def change
    create_table :nome_proprios do |t|
      t.string :nome
      t.string :genero
      t.string :nacionalidade

      t.timestamps
    end
  end
end
