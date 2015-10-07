class Item < ActiveRecord::Base
  attr_accessible :name, :subcategory_id, :users_id
end
