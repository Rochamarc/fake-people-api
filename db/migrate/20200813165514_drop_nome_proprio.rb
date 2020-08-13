class DropNomeProprio < ActiveRecord::Migration[6.0]
  def change
    drop_table :nome_proprios
    drop_table :sobrenomes
  end
end
