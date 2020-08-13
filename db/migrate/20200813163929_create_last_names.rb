class CreateLastNames < ActiveRecord::Migration[6.0]
  def change
    create_table :last_names do |t|
      t.string :name
      t.string :nationality

      t.timestamps
    end
  end
end
