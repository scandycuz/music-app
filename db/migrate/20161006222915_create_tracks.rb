class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title, null: false
      t.string :track_type, null: false
      t.text :lyrics

      t.integer :album_id
      t.timestamps null: false
    end

    add_index :tracks, :title
  end
end
