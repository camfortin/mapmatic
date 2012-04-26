class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :user

      t.timestamps
    end
  end
end
