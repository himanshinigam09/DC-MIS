class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :publication_name
      t.string :level
      t.string :organizer_name
      t.string :sponsers_name
      t.string :location
      t.string :paper_id
      t.string :paper_title
      t.string :date_of_publication
      t.text :abstract
      t.string :link
      t.string :author

      t.timestamps
    end
  end
end
