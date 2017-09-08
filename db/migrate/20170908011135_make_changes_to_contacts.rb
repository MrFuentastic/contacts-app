class MakeChangesToContacts < ActiveRecord::Migration[5.1]
  def change
    rename_column :contacts, :name, :first_name
    add_column :contacts, :middle_name, :string
    add_column :contacts, :last_name, :string
    add_column :contacts, :bio, :text
  end
end
