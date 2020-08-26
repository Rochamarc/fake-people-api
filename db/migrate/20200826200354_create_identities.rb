class CreateIdentities < ActiveRecord::Migration[6.0]
  def change
    create_table :identities do |t|
      t.string :number
      t.string :father
      t.string :mother
      t.string :state
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
