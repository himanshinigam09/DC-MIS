class CreateIssuedResources < ActiveRecord::Migration
  def change
    create_table :issued_resources do |t|
      t.string :type_of_resource
      t.string :issued_by
      t.string :issued_to
      t.date :issue_date
      t.time :issue_time
      t.date :submission_date
      t.time :submission_time

      t.timestamps
    end
  end
end
