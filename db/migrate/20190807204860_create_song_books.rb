class CreateSongBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :song_books do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
