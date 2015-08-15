class AddRememberMeToDeviseCreateAdminUsers < ActiveRecord::Migration
  def change
    add_column :devise_create_admin_users, :remember_me, :string
  end
end
