class AddDispnameToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :dispname, :string
  end
end
