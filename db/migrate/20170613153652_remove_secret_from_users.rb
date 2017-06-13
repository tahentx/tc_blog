class RemoveSecretFromUsers < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :token
  	remove_column :users, :secret
  end
end
