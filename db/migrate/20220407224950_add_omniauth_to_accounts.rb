class AddOmniauthToAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :provider, :string
    add_column :accounts, :uid, :string
  end
end
