class CreateCorrespondences < ActiveRecord::Migration
  def change
    create_table :correspondences do |t|
      t.string :type_of_correspondence
      t.string :subject
      t.string :user_initials
      t.string :medium
      t.string :address
      t.string :description
      t.date :date

      t.timestamps
    end
  end
end
