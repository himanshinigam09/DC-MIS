class AddContactNoAndParentEmailAndParentContactNoToDcMembers < ActiveRecord::Migration
  def change
    add_column :dc_members, :contact_no, :string
    add_column :dc_members, :parent_email, :string
    add_column :dc_members, :parent_contact_no, :string
  end
end
