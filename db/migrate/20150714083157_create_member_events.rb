class CreateMemberEvents < ActiveRecord::Migration
  def change
    create_table :member_events do |t|
      t.references :dc_member
      t.references :event

      t.timestamps
    end
    add_index :member_events, :dc_member_id
    add_index :member_events, :event_id
  end
end
