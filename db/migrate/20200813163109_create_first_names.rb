class CreateFirstNames < ActiveRecord::Migration[6.0]
  def change
    create_table :first_names do |t|
      t.string :name
      t.string :gender
      t.string :nationality

      t.timestamps
    end
  end
end
