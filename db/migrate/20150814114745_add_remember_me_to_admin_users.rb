class AddRememberMeToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :remember_me, :string
  end
end
