class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :edition
      t.string :publication
      t.string :ISBN_number

      t.timestamps
    end
  end
end
