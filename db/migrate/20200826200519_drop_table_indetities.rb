class DropTableIndetities < ActiveRecord::Migration[6.0]
  def change
    drop_table :indetities
  end
end
