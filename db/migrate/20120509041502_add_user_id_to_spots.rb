class AddUserIdToSpots < ActiveRecord::Migration
  
  def self.up
      add_column :spots, :user_id,:integer
      add_index  :spots, :user_id
      remove_column :spots, :user
  end
  def self.down
      remove_column :spots,:user_id
      add_column :spots, :user, :string
  end 
  
end
