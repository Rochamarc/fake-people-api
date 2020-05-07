class CreateSobrenomes < ActiveRecord::Migration[6.0]
  def change
    create_table :sobrenomes do |t|
      t.string :nome
      t.string :nacionalidade

      t.timestamps
    end
  end
end
