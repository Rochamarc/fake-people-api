class CreateSsns < ActiveRecord::Migration[6.0]
  def change
    create_table :ssns do |t|
      t.string :number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
