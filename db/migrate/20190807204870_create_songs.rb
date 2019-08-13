class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :style
      t.string :composer
      t.string :lyricist
      t.string :performed_by
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
