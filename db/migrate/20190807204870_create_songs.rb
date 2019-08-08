class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.references :style, foreign_key: true
      t.references :song_book, foreign_key: true
      t.timestamps
    end
  end
end
