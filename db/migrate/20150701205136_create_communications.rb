class CreateCommunications < ActiveRecord::Migration
  def change
    create_table :communications do |t|
      t.references :dc_member
      t.references :correspondence

      t.timestamps
    end
    add_index :communications, :dc_member_id
    add_index :communications, :correspondence_id
  end
end
