class CreateAuditions < ActiveRecord::Migration[5.2]
  def change
    create_table :auditions do |t|
      t.references :user, foreign_key: true
      t.references :song, foreign_key: true
      t.references :casting_office, foreign_key: true
      t.references :style, foreign_key: true
      t.references :audition_location, foreign_key: true
      t.string :song_length
      t.string :musical_title
      t.boolean :appointment
      t.string :outfit_img
      t.time :time
      t.date :date
      t.boolean :sides
      t.boolean :sides_performed
      t.boolean :callback
      t.boolean :booked

      t.timestamps
    end
  end
end
