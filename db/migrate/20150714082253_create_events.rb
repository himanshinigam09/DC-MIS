class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :type_of_event
      t.string :organizer_name
      t.string :topic
      t.string :venue
      t.date :date
      t.time :time
      t.string :duration
      t.string :material_link
      t.string :summary_link

      t.timestamps
    end
  end
end
