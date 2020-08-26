class AddUserReferencesToSsns < ActiveRecord::Migration[6.0]
  def change
    drop_table :ssns 
    drop_table :identities
  end
end
