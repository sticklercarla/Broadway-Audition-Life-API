class CreateAuditionLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :audition_locations do |t|
      t.string :name
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
