class CreateDcs < ActiveRecord::Migration
  def change
    create_table :dcs do |t|

      t.timestamps
    end
  end
end
