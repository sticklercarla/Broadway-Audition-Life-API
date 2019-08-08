class CreateCastingOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :casting_offices do |t|
      t.string :name

      t.timestamps
    end
  end
end
